" File:        todo.txt.vim
" Description: Todo.txt filetype detection
" Author:      Leandro Freitas <freitass@gmail.com>
" License:     Vim license
" Website:     http://github.com/freitass/todo.txt-vim
" Version:     0.4

" Export Context Dictionary for unit testing {{{1
function! s:get_SID()
    return matchstr(expand('<sfile>'), '<SNR>\d\+_')
endfunction
let s:SID = s:get_SID()
delfunction s:get_SID

function! todo#txt#__context__()
    return { 'sid': s:SID, 'scope': s: }
endfunction

" Functions {{{1
function! s:remove_priority()
    :s/^(\w)\s\+//ge
endfunction

function! s:get_current_date()
    return strftime('%Y-%m-%d')
endfunction

function! todo#txt#prepend_date()
    execute 'normal! 0i' . s:get_current_date() . ' '
endfunction

function! todo#txt#replace_date()
    let current_line = getline('.')
    if (current_line =~ '^\(([a-zA-Z]) \)\?\d\{2,4\}-\d\{2\}-\d\{2\} ') &&
                \ exists('g:todo_existing_date') && g:todo_existing_date == 'n'
        return
    endif
    execute 's/^\(([a-zA-Z]) \)\?\(\d\{2,4\}-\d\{2\}-\d\{2\} \)\?/\1' . s:get_current_date() . ' /'
endfunction

function! todo#txt#mark_as_done()
    call s:remove_priority()
    call todo#txt#prepend_date()
    execute 'normal! 0ix '
endfunction

function! todo#txt#mark_as_failed()
    call s:remove_priority()
    call todo#txt#prepend_date()
    execute 'normal! 0if '
endfunction

function! todo#txt#mark_as_wontdo()
    call s:remove_priority()
    call todo#txt#prepend_date()
    execute 'normal! 0iw '
endfunction

function! todo#txt#mark_all_as_done()
    :g!/^x /:call todo#txt#mark_as_done()
endfunction

function! s:append_to_file(file, lines)
    let l:lines = []

    " Place existing tasks in done.txt at the beggining of the list.
    if filereadable(a:file)
        call extend(l:lines, readfile(a:file))
    endif

    " Append new completed tasks to the list.
    call extend(l:lines, a:lines)

    " Write to file.
    call writefile(l:lines, a:file)
endfunction

function! todo#txt#remove_completed()
    " Check if we can write to done.txt before proceeding.

    let l:target_dir = expand('%:p:h')
    let l:todo_file = expand('%:p')
    " Check for user-defined g:todo_done_filename
    if exists("g:todo_done_filename")
        let l:todo_done_filename = g:todo_done_filename
    elseif expand('%:t') == 'Todo.txt'
        let l:todo_done_filename = 'Done.txt'
    else
        let l:todo_done_filename = 'done.txt'
    endif
    let l:done_file = substitute(substitute(l:todo_file, 'todo.txt$', l:todo_done_filename, ''), 'Todo.txt$', l:todo_done_filename, '')
    if !filewritable(l:done_file) && !filewritable(l:target_dir)
        echoerr "Can't write to file '" . l:todo_done_filename . "'"
        return
    endif

    let l:completed = []
    :g/^x /call add(l:completed, getline(line(".")))|d
    call s:append_to_file(l:done_file, l:completed)
endfunction

function! todo#txt#remove_to_done_file(done_file, done_letter)
    let l:target_dir = expand('%:p:h')
    let l:todo_file = expand('%:p')
    if !filewritable(a:done_file) && !filewritable(l:target_dir)
        echoerr "Can't write to file '" . a:done_file . "'"
        return
    endif

    let l:completed = []
    execute 'g/^' . a:done_letter . ' /call add(l:completed, getline(line(".")))|d'
    call s:append_to_file(a:done_file, l:completed)
endfunction

function! todo#txt#remove_to_someday_file()
    let l:target_dir = expand('%:p:h')
    if !filewritable('someday.txt') && !filewritable(l:target_dir)
        echoerr "Can't write to file 'someday.txt'"
        return
    endif

    let l:completed = []
    call add(l:completed, getline(line(".")))
    delete
    call s:append_to_file('someday.txt', l:completed)
endfunction

function! todo#txt#remove_to_all_done_files()
    call todo#txt#remove_completed()
    call todo#txt#remove_to_done_file('wontdo.txt', 'w')
    call todo#txt#remove_to_done_file('failed.txt', 'f')
endfunction

function! todo#txt#sort_by_context() range
    execute a:firstline . "," . a:lastline . "sort /\\(^\\| \\)\\zs@[^[:blank:]]\\+/ r"
endfunction

function! todo#txt#sort_by_project() range
    execute a:firstline . "," . a:lastline . "sort /\\(^\\| \\)\\zs+[^[:blank:]]\\+/ r"
endfunction

function! todo#txt#sort_by_date() range
    let l:date_regex = "\\d\\{2,4\\}-\\d\\{2\\}-\\d\\{2\\}"
    execute a:firstline . "," . a:lastline . "sort /" . l:date_regex . "/ r"
    execute a:firstline . "," . a:lastline . "g!/" . l:date_regex . "/m" . a:lastline
endfunction

function! todo#txt#sort_by_due_date() range
    let l:date_regex = "due:\\d\\{2,4\\}-\\d\\{2\\}-\\d\\{2\\}"
    execute a:firstline . "," . a:lastline . "sort /" . l:date_regex . "/ r"
    execute a:firstline . "," . a:lastline . "g!/" . l:date_regex . "/m" . a:lastline
endfunction

function! todo#txt#prioritize_increase()
    " save old nf (nrformats), increment priority of alpha, restore nf, so that we don't mess with the user's settings
    let l:old_nf = &nf
    set nf=octal,hex,alpha
    normal! 0f)h
    let &nf = l:old_nf
endfunction

function! todo#txt#prioritize_decrease()
    " save old nf (nrformats), decrement priority of alpha, restore nf, so that we don't mess with the user's settings
    let l:old_nf = &nf
    set nf=octal,hex,alpha
    normal! 0f)h
    let &nf = l:old_nf
endfunction

function! todo#txt#prioritize_add(priority)
    " Need to figure out how to only do this if the first visible letter in a line is not (
    :call todo#txt#prioritize_add_action(a:priority)
endfunction

function! todo#txt#prioritize_add_action(priority)
    execute 's/^\(([a-zA-Z]) \)\?/(' . a:priority . ') /'
endfunction

function! todo#txt#increment_recurring_due_date()
    " Get the current line
    let line = getline('.')

    " Call the external Python function
    let newLine = system('python3 /Users/jerry/.local/share/nvim/lazy/todo.txt-vim/python/increment_date.py "' . line . '"')

    " Remove trailing newline from system command output
    let newLine = substitute(newLine, '\n\+$', '', '')

    " Replace the current line with the new one
    call setline('.', newLine)

endfunction

function! todo#txt#complete_recurring_task()
    " copy line below
    execute "normal! yypk"

    " complete task
    call todo#txt#mark_as_done()

    " Move the cursor to the new line
    execute "normal! j"

    " increment due date
    call todo#txt#increment_recurring_due_date()
endfunction

" Modeline {{{1
" vim: ts=8 sw=4 sts=4 et foldenable foldmethod=marker foldcolumn=1

" File:        todo.txt.vim
" Description: Todo.txt filetype detection
" Author:      Leandro Freitas <freitass@gmail.com>
" License:     Vim license
" Website:     http://github.com/freitass/todo.txt-vim
" Version:     0.4

" Save context {{{1
let s:save_cpo = &cpo
set cpo&vim

" General options {{{1
" Some options lose their values when window changes. They will be set every
" time this script is invocated, which is whenever a file of this type is
" created or edited.
setlocal textwidth=0
setlocal wrapmargin=0

" Mappings {{{1
" Sort tasks {{{2
"
" Sort by first non-whitespace character. This is helpful when tasks are
" aligned differently.
nnoremap <script> <silent> <buffer> <localleader>ss :%sort /\S.*/ r<CR>
vnoremap <script> <silent> <buffer> <localleader>ss :sort /\S.*/ r<CR>
nnoremap <script> <silent> <buffer> <localleader>sc :%call todo#txt#sort_by_context()<CR>
vnoremap <script> <silent> <buffer> <localleader>sc :call todo#txt#sort_by_context()<CR>
nnoremap <script> <silent> <buffer> <localleader>sp :%call todo#txt#sort_by_project()<CR>
vnoremap <script> <silent> <buffer> <localleader>sp :call todo#txt#sort_by_project()<CR>
nnoremap <script> <silent> <buffer> <localleader>sd :%call todo#txt#sort_by_date()<CR>
vnoremap <script> <silent> <buffer> <localleader>sd :call todo#txt#sort_by_date()<CR>
nnoremap <script> <silent> <buffer> <localleader>su :%call todo#txt#sort_by_due_date()<CR>
vnoremap <script> <silent> <buffer> <localleader>su :call todo#txt#sort_by_due_date()<CR>

" Change priority {{{2
nnoremap <script> <silent> <buffer> <localleader>j :call todo#txt#prioritize_increase()<CR>
vnoremap <script> <silent> <buffer> <localleader>j :call todo#txt#prioritize_increase()<CR>
nnoremap <script> <silent> <buffer> <localleader>k :call todo#txt#prioritize_decrease()<CR>
vnoremap <script> <silent> <buffer> <localleader>k :call todo#txt#prioritize_decrease()<CR>
nnoremap <script> <silent> <buffer> <localleader>a :call todo#txt#prioritize_add('A')<CR>
vnoremap <script> <silent> <buffer> <localleader>a :call todo#txt#prioritize_add('A')<CR>
nnoremap <script> <silent> <buffer> <localleader>b :call todo#txt#prioritize_add('B')<CR>
vnoremap <script> <silent> <buffer> <localleader>b :call todo#txt#prioritize_add('B')<CR>
nnoremap <script> <silent> <buffer> <localleader>c :call todo#txt#prioritize_add('C')<CR>
vnoremap <script> <silent> <buffer> <localleader>c :call todo#txt#prioritize_add('C')<CR>
nnoremap <script> <silent> <buffer> <localleader>pa :call todo#txt#prioritize_add('A')<CR>
vnoremap <script> <silent> <buffer> <localleader>pa :call todo#txt#prioritize_add('A')<CR>
nnoremap <script> <silent> <buffer> <localleader>pb :call todo#txt#prioritize_add('B')<CR>
vnoremap <script> <silent> <buffer> <localleader>pb :call todo#txt#prioritize_add('B')<CR>
nnoremap <script> <silent> <buffer> <localleader>pc :call todo#txt#prioritize_add('C')<CR>
vnoremap <script> <silent> <buffer> <localleader>pc :call todo#txt#prioritize_add('C')<CR>
nnoremap <script> <silent> <buffer> <localleader>pd :call todo#txt#prioritize_add('D')<CR>
vnoremap <script> <silent> <buffer> <localleader>pd :call todo#txt#prioritize_add('D')<CR>
nnoremap <script> <silent> <buffer> <localleader>pe :call todo#txt#prioritize_add('E')<CR>
vnoremap <script> <silent> <buffer> <localleader>pe :call todo#txt#prioritize_add('E')<CR>
nnoremap <script> <silent> <buffer> <localleader>pf :call todo#txt#prioritize_add('F')<CR>
vnoremap <script> <silent> <buffer> <localleader>pf :call todo#txt#prioritize_add('F')<CR>
nnoremap <script> <silent> <buffer> <localleader>pg :call todo#txt#prioritize_add('G')<CR>
vnoremap <script> <silent> <buffer> <localleader>pg :call todo#txt#prioritize_add('G')<CR>
nnoremap <script> <silent> <buffer> <localleader>ph :call todo#txt#prioritize_add('H')<CR>
vnoremap <script> <silent> <buffer> <localleader>ph :call todo#txt#prioritize_add('H')<CR>
nnoremap <script> <silent> <buffer> <localleader>pi :call todo#txt#prioritize_add('I')<CR>
vnoremap <script> <silent> <buffer> <localleader>pi :call todo#txt#prioritize_add('I')<CR>
nnoremap <script> <silent> <buffer> <localleader>pj :call todo#txt#prioritize_add('J')<CR>
vnoremap <script> <silent> <buffer> <localleader>pj :call todo#txt#prioritize_add('J')<CR>
nnoremap <script> <silent> <buffer> <localleader>pk :call todo#txt#prioritize_add('K')<CR>
vnoremap <script> <silent> <buffer> <localleader>pk :call todo#txt#prioritize_add('K')<CR>
nnoremap <script> <silent> <buffer> <localleader>pl :call todo#txt#prioritize_add('L')<CR>
vnoremap <script> <silent> <buffer> <localleader>pl :call todo#txt#prioritize_add('L')<CR>
nnoremap <script> <silent> <buffer> <localleader>pm :call todo#txt#prioritize_add('M')<CR>
vnoremap <script> <silent> <buffer> <localleader>pm :call todo#txt#prioritize_add('M')<CR>
nnoremap <script> <silent> <buffer> <localleader>pn :call todo#txt#prioritize_add('N')<CR>
vnoremap <script> <silent> <buffer> <localleader>pn :call todo#txt#prioritize_add('N')<CR>
nnoremap <script> <silent> <buffer> <localleader>po :call todo#txt#prioritize_add('O')<CR>
vnoremap <script> <silent> <buffer> <localleader>po :call todo#txt#prioritize_add('O')<CR>
nnoremap <script> <silent> <buffer> <localleader>pp :call todo#txt#prioritize_add('P')<CR>
vnoremap <script> <silent> <buffer> <localleader>pp :call todo#txt#prioritize_add('P')<CR>
nnoremap <script> <silent> <buffer> <localleader>pq :call todo#txt#prioritize_add('Q')<CR>
vnoremap <script> <silent> <buffer> <localleader>pq :call todo#txt#prioritize_add('Q')<CR>
nnoremap <script> <silent> <buffer> <localleader>pr :call todo#txt#prioritize_add('R')<CR>
vnoremap <script> <silent> <buffer> <localleader>pr :call todo#txt#prioritize_add('R')<CR>
nnoremap <script> <silent> <buffer> <localleader>ps :call todo#txt#prioritize_add('S')<CR>
vnoremap <script> <silent> <buffer> <localleader>ps :call todo#txt#prioritize_add('S')<CR>
nnoremap <script> <silent> <buffer> <localleader>pt :call todo#txt#prioritize_add('T')<CR>
vnoremap <script> <silent> <buffer> <localleader>pt :call todo#txt#prioritize_add('T')<CR>
nnoremap <script> <silent> <buffer> <localleader>pu :call todo#txt#prioritize_add('U')<CR>
vnoremap <script> <silent> <buffer> <localleader>pu :call todo#txt#prioritize_add('U')<CR>
nnoremap <script> <silent> <buffer> <localleader>pv :call todo#txt#prioritize_add('V')<CR>
vnoremap <script> <silent> <buffer> <localleader>pv :call todo#txt#prioritize_add('V')<CR>
nnoremap <script> <silent> <buffer> <localleader>pw :call todo#txt#prioritize_add('W')<CR>
vnoremap <script> <silent> <buffer> <localleader>pw :call todo#txt#prioritize_add('W')<CR>
nnoremap <script> <silent> <buffer> <localleader>px :call todo#txt#prioritize_add('X')<CR>
vnoremap <script> <silent> <buffer> <localleader>px :call todo#txt#prioritize_add('X')<CR>
nnoremap <script> <silent> <buffer> <localleader>py :call todo#txt#prioritize_add('Y')<CR>
vnoremap <script> <silent> <buffer> <localleader>py :call todo#txt#prioritize_add('Y')<CR>
nnoremap <script> <silent> <buffer> <localleader>pz :call todo#txt#prioritize_add('Z')<CR>
vnoremap <script> <silent> <buffer> <localleader>pz :call todo#txt#prioritize_add('Z')<CR>

" Insert date {{{2
" inoremap <script> <silent> <buffer> date<Tab> <C-R>=strftime("%Y-%m-%d")<CR>
nnoremap <script> <silent> <buffer> <localleader>d :call todo#txt#replace_date()<CR>
vnoremap <script> <silent> <buffer> <localleader>d :call todo#txt#replace_date()<CR>

" Mark done {{{2
nnoremap <script> <silent> <buffer> <localleader>x :call todo#txt#mark_as_done()<CR>
vnoremap <script> <silent> <buffer> <localleader>x :call todo#txt#mark_as_done()<CR>
nnoremap <script> <silent> <buffer> <localleader>f :call todo#txt#mark_as_failed()<CR>
vnoremap <script> <silent> <buffer> <localleader>f :call todo#txt#mark_as_failed()<CR>
nnoremap <script> <silent> <buffer> <localleader>w :call todo#txt#mark_as_wontdo()<CR>
vnoremap <script> <silent> <buffer> <localleader>w :call todo#txt#mark_as_wontdo()<CR>

" Mark all done {{{2
nnoremap <script> <silent> <buffer> <localleader>X :call todo#txt#mark_all_as_done()<CR>

" Remove completed {{{2
" nnoremap <script> <silent> <buffer> <localleader>D :call todo#txt#remove_completed()<CR>
nnoremap <script> <silent> <buffer> <localleader>D :call todo#txt#remove_to_all_done_files()<CR>
nnoremap <script> <silent> <buffer> <localleader>S :call todo#txt#remove_to_someday_file()<CR>
" nnoremap <script> <silent> <buffer> <localleader>W :call todo#txt#remove_to_done_file('wontdo.txt', 'w')<CR>
" nnoremap <script> <silent> <buffer> <localleader>F :call todo#txt#remove_to_done_file('failed.txt', 'f')<CR>

nnoremap <script> <silent> <buffer> <localleader>r :call todo#txt#complete_recurring_task()<CR>

" Folding {{{1
" Options {{{2
setlocal foldmethod=expr
setlocal foldexpr=s:todo_fold_level(v:lnum)
setlocal foldtext=s:todo_fold_text()

" s:todo_fold_level(lnum) {{{2
function! s:todo_fold_level(lnum)
    " The match function returns the index of the matching pattern or -1 if
    " the pattern doesn't match. In this case, we always try to match a
    " completed task from the beginning of the line so that the matching
    " function will always return -1 if the pattern doesn't match or 0 if the
    " pattern matches. Incrementing by one the value returned by the matching
    " function we will return 1 for the completed tasks (they will be at the
    " first folding level) while for the other lines 0 will be returned,
    " indicating that they do not fold.
    return match(getline(a:lnum),'^[xX]\s.\+$') + 1
endfunction

" s:todo_fold_text() {{{2
function! s:todo_fold_text()
    " The text displayed at the fold is formatted as '+- N Completed tasks'
    " where N is the number of lines folded.
    return '+' . v:folddashes . ' '
                \ . (v:foldend - v:foldstart + 1)
                \ . ' Completed tasks '
endfunction

" Restore context {{{1
let &cpo = s:save_cpo
" Modeline {{{1
" vim: ts=8 sw=4 sts=4 et foldenable foldmethod=marker foldcolumn=1

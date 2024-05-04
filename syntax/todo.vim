" File:        todo.txt.vim
" Description: Todo.txt syntax settings
" Author:      Leandro Freitas <freitass@gmail.com>
" License:     Vim license
" Website:     http://github.com/freitass/todo.txt-vim
" Version:     0.3

if exists("b:current_syntax")
    finish
endif

syntax  match  TodoDate1      '\d\{2,4\}-\d\{2\}-01' contains=NONE
syntax  match  TodoDate2      '\d\{2,4\}-\d\{2\}-02' contains=NONE
syntax  match  TodoDate3      '\d\{2,4\}-\d\{2\}-03' contains=NONE
syntax  match  TodoDate4      '\d\{2,4\}-\d\{2\}-04' contains=NONE
syntax  match  TodoDate5      '\d\{2,4\}-\d\{2\}-05' contains=NONE
syntax  match  TodoDate6      '\d\{2,4\}-\d\{2\}-06' contains=NONE
syntax  match  TodoDate7      '\d\{2,4\}-\d\{2\}-07' contains=NONE
syntax  match  TodoDate8      '\d\{2,4\}-\d\{2\}-08' contains=NONE
syntax  match  TodoDate9      '\d\{2,4\}-\d\{2\}-09' contains=NONE
syntax  match  TodoDate10     '\d\{2,4\}-\d\{2\}-10' contains=NONE
syntax  match  TodoDate11     '\d\{2,4\}-\d\{2\}-11' contains=NONE
syntax  match  TodoDate12     '\d\{2,4\}-\d\{2\}-12' contains=NONE
syntax  match  TodoDate13     '\d\{2,4\}-\d\{2\}-13' contains=NONE
syntax  match  TodoDate14     '\d\{2,4\}-\d\{2\}-14' contains=NONE
syntax  match  TodoDate15     '\d\{2,4\}-\d\{2\}-15' contains=NONE
syntax  match  TodoDate16     '\d\{2,4\}-\d\{2\}-16' contains=NONE
syntax  match  TodoDate17     '\d\{2,4\}-\d\{2\}-17' contains=NONE
syntax  match  TodoDate18     '\d\{2,4\}-\d\{2\}-18' contains=NONE
syntax  match  TodoDate19     '\d\{2,4\}-\d\{2\}-19' contains=NONE
syntax  match  TodoDate20     '\d\{2,4\}-\d\{2\}-20' contains=NONE
syntax  match  TodoDate21     '\d\{2,4\}-\d\{2\}-21' contains=NONE
syntax  match  TodoDate22     '\d\{2,4\}-\d\{2\}-22' contains=NONE
syntax  match  TodoDate23     '\d\{2,4\}-\d\{2\}-23' contains=NONE
syntax  match  TodoDate24     '\d\{2,4\}-\d\{2\}-24' contains=NONE
syntax  match  TodoDate25     '\d\{2,4\}-\d\{2\}-25' contains=NONE
syntax  match  TodoDate26     '\d\{2,4\}-\d\{2\}-26' contains=NONE
syntax  match  TodoDate27     '\d\{2,4\}-\d\{2\}-27' contains=NONE
syntax  match  TodoDate28     '\d\{2,4\}-\d\{2\}-28' contains=NONE
syntax  match  TodoDate29     '\d\{2,4\}-\d\{2\}-29' contains=NONE
syntax  match  TodoDate30     '\d\{2,4\}-\d\{2\}-30' contains=NONE
syntax  match  TodoDate31     '\d\{2,4\}-\d\{2\}-31' contains=NONE

syntax cluster TodoDateGroup add=TodoDate1,TodoDate2,TodoDate3,TodoDate4,TodoDate5,TodoDate6,TodoDate7,TodoDate8,TodoDate9,TodoDate10,TodoDate11,TodoDate12,TodoDate13,TodoDate14,TodoDate15,TodoDate16,TodoDate17,TodoDate18,TodoDate19,TodoDate20,TodoDate21,TodoDate22,TodoDate23,TodoDate24,TodoDate25,TodoDate26,TodoDate27,TodoDate28,TodoDate29,TodoDate30,TodoDate31

syntax  match  TodoProjectA    '\(^\|\W\)+a[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectB    '\(^\|\W\)+b[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectC    '\(^\|\W\)+c[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectD    '\(^\|\W\)+d[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectE    '\(^\|\W\)+e[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectF    '\(^\|\W\)+f[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectG    '\(^\|\W\)+g[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectH    '\(^\|\W\)+h[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectI    '\(^\|\W\)+i[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectJ    '\(^\|\W\)+j[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectK    '\(^\|\W\)+k[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectL    '\(^\|\W\)+l[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectM    '\(^\|\W\)+m[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectN    '\(^\|\W\)+n[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectO    '\(^\|\W\)+o[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectP    '\(^\|\W\)+p[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectQ    '\(^\|\W\)+q[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectR    '\(^\|\W\)+r[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectS    '\(^\|\W\)+s[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectT    '\(^\|\W\)+t[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectU    '\(^\|\W\)+u[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectV    '\(^\|\W\)+v[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectW    '\(^\|\W\)+w[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectX    '\(^\|\W\)+x[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectY    '\(^\|\W\)+y[^[:blank:]]\+'  contains=NONE
syntax  match  TodoProjectZ    '\(^\|\W\)+z[^[:blank:]]\+'  contains=NONE

syntax cluster TodoProjectGroup add=TodoProjectA,TodoProjectB,TodoProjectC,TodoProjectD,TodoProjectE,TodoProjectF,TodoProjectG,TodoProjectH,TodoProjectI,TodoProjectJ,TodoProjectK,TodoProjectL,TodoProjectM,TodoProjectN,TodoProjectO,TodoProjectP,TodoProjectQ,TodoProjectR,TodoProjectS,TodoProjectT,TodoProjectU,TodoProjectV,TodoProjectW,TodoProjectX,TodoProjectY,TodoProjectZ

syntax  match  TodoPriorityA  '^([aA])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityB  '^([bB])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityC  '^([cC])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityD  '^([dD])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityE  '^([eE])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityF  '^([fF])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityG  '^([gG])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityH  '^([hH])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityI  '^([iI])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityJ  '^([jJ])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityK  '^([kK])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityL  '^([lL])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityM  '^([mM])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityN  '^([nN])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityO  '^([oO])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityP  '^([pP])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityQ  '^([qQ])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityR  '^([rR])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityS  '^([sS])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityT  '^([tT])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityU  '^([uU])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityV  '^([vV])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityW  '^([wW])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityX  '^([xX])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityY  '^([yY])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate
syntax  match  TodoPriorityZ  '^([zZ])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup,TodoContext,OverDueDate

syntax  match  TodoDone       '^[xX]\s.\+$'
syntax  match  TodoContext    '\(^\|\W\)@[^[:blank:]]\+'  contains=NONE

" Other priority colours might be defined by the user
" highlight  default  link  TodoDone       Comment
" highlight  default  link  TodoPriorityA  Constant
" highlight  default  link  TodoPriorityB  Statement
" highlight  default  link  TodoPriorityC  Identifier
" highlight  default  link  TodoDate       PreProc
" highlight  default  link  TodoProject    Special
" highlight  default  link  TodoContext    Special

" catppuccin colors. This order is how it's defined in the colorscheme. Use
" this ordering as a default ordering for date and project regexes.
" rosewater           WinBar
" flamingo            Identifier
" pink                PreProc, Special
" mauve               Statement
" red                 Error
" maroon              @variable.parameter
" peach               Constant
" yellow              WarningMsg
" green               String
" teal                Character
" sky                 Operator
" sapphire            Label
" blue                Function
" lavender            CursorLineNr
" overlay0            Comment (TodoDone) " skip this one for date and project
"
" todo priority order from A to Z, cycling
" red                 Error
" maroon              @variable.parameter
" peach               Constant
" yellow              WarningMsg
" mauve               Statement
" pink                PreProc
" green               String
" teal                Character
" sky                 Operator
" sapphire            Label
" blue                Function
" lavender            CursorLineNr
" flamingo            Identifier
" rosewater           WinBar

highlight  default  link  TodoDone       Comment
highlight  default  link  TodoContext    Special

highlight  default  link  TodoPriorityA  Error
highlight  default  link  TodoPriorityB  @variable.parameter
highlight  default  link  TodoPriorityC  Constant
highlight  default  link  TodoPriorityD  WarningMsg
highlight  default  link  TodoPriorityE  Statement
highlight  default  link  TodoPriorityF  PreProc
highlight  default  link  TodoPriorityG  String
highlight  default  link  TodoPriorityH  Character
highlight  default  link  TodoPriorityI  Operator
highlight  default  link  TodoPriorityJ  Label
highlight  default  link  TodoPriorityK  Function
highlight  default  link  TodoPriorityL  CursorLineNr
highlight  default  link  TodoPriorityM  Identifier
highlight  default  link  TodoPriorityN  WinBar
highlight  default  link  TodoPriorityO  Error
highlight  default  link  TodoPriorityP  @variable.parameter
highlight  default  link  TodoPriorityQ  Constant
highlight  default  link  TodoPriorityR  WarningMsg
highlight  default  link  TodoPriorityS  Statement
highlight  default  link  TodoPriorityT  PreProc
highlight  default  link  TodoPriorityU  String
highlight  default  link  TodoPriorityV  Character
highlight  default  link  TodoPriorityW  Operator
highlight  default  link  TodoPriorityX  Label
highlight  default  link  TodoPriorityY  Function
highlight  default  link  TodoPriorityZ  CursorLineNr

highlight  default  link  TodoDate1      WinBar
highlight  default  link  TodoDate2      Identifier
highlight  default  link  TodoDate3      PreProc
highlight  default  link  TodoDate4      Statement
highlight  default  link  TodoDate5      Error
highlight  default  link  TodoDate6      @variable.parameter
highlight  default  link  TodoDate7      Constant
highlight  default  link  TodoDate8      WarningMsg
highlight  default  link  TodoDate9      String
highlight  default  link  TodoDate10     Character
highlight  default  link  TodoDate11     Operator
highlight  default  link  TodoDate12     Label
highlight  default  link  TodoDate13     Function
highlight  default  link  TodoDate14     CursorLineNr
highlight  default  link  TodoDate15     WinBar
highlight  default  link  TodoDate16     Identifier
highlight  default  link  TodoDate17     PreProc
highlight  default  link  TodoDate18     Statement
highlight  default  link  TodoDate19     Error
highlight  default  link  TodoDate20     @variable.parameter
highlight  default  link  TodoDate21     Constant
highlight  default  link  TodoDate22     WarningMsg
highlight  default  link  TodoDate23     String
highlight  default  link  TodoDate24     Character
highlight  default  link  TodoDate25     Operator
highlight  default  link  TodoDate26     Label
highlight  default  link  TodoDate27     Function
highlight  default  link  TodoDate28     CursorLineNr
highlight  default  link  TodoDate29     WinBar
highlight  default  link  TodoDate30     Identifier
highlight  default  link  TodoDate31     PreProc

highlight  default  link  TodoProjectA  WinBar
highlight  default  link  TodoProjectB  Identifier
highlight  default  link  TodoProjectC  PreProc
highlight  default  link  TodoProjectD  Statement
highlight  default  link  TodoProjectE  Error
highlight  default  link  TodoProjectF  @variable.parameter
highlight  default  link  TodoProjectG  Constant
highlight  default  link  TodoProjectH  WarningMsg
highlight  default  link  TodoProjectI  String
highlight  default  link  TodoProjectJ  Character
highlight  default  link  TodoProjectK  Operator
highlight  default  link  TodoProjectL  Label
highlight  default  link  TodoProjectM  Function
highlight  default  link  TodoProjectN  CursorLineNr
highlight  default  link  TodoProjectO  WinBar
highlight  default  link  TodoProjectP  Identifier
highlight  default  link  TodoProjectQ  PreProc
highlight  default  link  TodoProjectR  Statement
highlight  default  link  TodoProjectS  Error
highlight  default  link  TodoProjectT  @variable.parameter
highlight  default  link  TodoProjectU  Constant
highlight  default  link  TodoProjectV  WarningMsg
highlight  default  link  TodoProjectW  String
highlight  default  link  TodoProjectX  Character
highlight  default  link  TodoProjectY  Operator
highlight  default  link  TodoProjectZ  Label

if exists('g:todo_load_python') && g:todo_load_python
    if has('python')
        let b:curdir = expand('<sfile>:p:h')
        let s:script_dir = b:curdir . "/python/"
        execute "pyfile " . s:script_dir. "todo.py"
    elseif has('python3')
        let b:curdir = expand('<sfile>:p:h')
        let s:script_dir = b:curdir . "/python/"
        execute "py3file " . s:script_dir. "todo.py"
    else
        echom "Your version of vim has no python support. Overdue dates won't be highlighted"
    endif
endif

let b:current_syntax = "todo"

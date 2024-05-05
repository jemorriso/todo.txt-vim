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

" syntax  match  TodoProjectA    '\(^\|\W\)+a[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectB    '\(^\|\W\)+b[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectC    '\(^\|\W\)+c[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectD    '\(^\|\W\)+d[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectE    '\(^\|\W\)+e[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectF    '\(^\|\W\)+f[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectG    '\(^\|\W\)+g[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectH    '\(^\|\W\)+h[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectI    '\(^\|\W\)+i[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectJ    '\(^\|\W\)+j[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectK    '\(^\|\W\)+k[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectL    '\(^\|\W\)+l[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectM    '\(^\|\W\)+m[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectN    '\(^\|\W\)+n[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectO    '\(^\|\W\)+o[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectP    '\(^\|\W\)+p[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectQ    '\(^\|\W\)+q[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectR    '\(^\|\W\)+r[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectS    '\(^\|\W\)+s[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectT    '\(^\|\W\)+t[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectU    '\(^\|\W\)+u[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectV    '\(^\|\W\)+v[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectW    '\(^\|\W\)+w[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectX    '\(^\|\W\)+x[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectY    '\(^\|\W\)+y[^[:blank:]]\+'  contains=NONE
" syntax  match  TodoProjectZ    '\(^\|\W\)+z[^[:blank:]]\+'  contains=NONE

" syntax  match  TodoProjectW    '+w\w\+.\?'
" syntax  match  TodoProjectN    '+n\w\+.\?'
" syntax  match  TodoProjectN    '+\w\+.\zs\w\+'
" syntax match TodoProjectN /\v\+\w+\.\zs\w+/
" syntax match TodoProjectN 'a'

" syntax match TodoSubProject '+\w\+.\zs\w\+'

" syntax cluster TodoProjectGroup add=TodoProjectA,TodoProjectB,TodoProjectC,TodoProjectD,TodoProjectE,TodoProjectF,TodoProjectG,TodoProjectH,TodoProjectI,TodoProjectJ,TodoProjectK,TodoProjectL,TodoProjectM,TodoProjectN,TodoProjectO,TodoProjectP,TodoProjectQ,TodoProjectR,TodoProjectS,TodoProjectT,TodoProjectU,TodoProjectV,TodoProjectW,TodoProjectX,TodoProjectY,TodoProjectZ
syntax cluster TodoProjectGroup add=TodoProject
syntax cluster TodoContextGroup add=TodoContext

syntax  match  TodoPriorityA  '^([aA])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityB  '^([bB])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityC  '^([cC])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityD  '^([dD])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityE  '^([eE])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityF  '^([fF])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityG  '^([gG])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityH  '^([hH])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityI  '^([iI])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityJ  '^([jJ])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityK  '^([kK])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityL  '^([lL])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityM  '^([mM])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityN  '^([nN])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityO  '^([oO])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityP  '^([pP])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityQ  '^([qQ])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityR  '^([rR])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityS  '^([sS])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityT  '^([tT])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityU  '^([uU])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityV  '^([vV])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityW  '^([wW])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityX  '^([xX])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityY  '^([yY])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup
syntax  match  TodoPriorityZ  '^([zZ])\s.\+$'             contains=@TodoDateGroup,@TodoProjectGroup, @TodoContextGroup,OverDueDate,TodoRegion,@TodoTagGroup

syntax  match  TodoDone       '^[xX]\s.\+$'
" syntax  match  TodoContext    '\(^\|\W\)@[^[:blank:]]\+'  contains=NONE

syntax region TodoRegion start=/[+@]\w/ end=/\(\s\|$\)/ contains=TodoA,TodoB,TodoC,TodoD,TodoE,TodoF,TodoG,TodoH,TodoI,TodoJ,TodoK,TodoL,TodoM,TodoN,TodoO,TodoP,TodoQ,TodoR,TodoS,TodoT,TodoU,TodoV,TodoW,TodoX,TodoY,TodoZ
" syntax region TodoProject start=/+\w/ end=/$/ contains=TodoSubProject
" syntax match TodoSubProject '\.\zs\w\+\ze\.' contained

syntax match TodoA /[+@.-]a\w*/ contained
syntax match TodoB /[+@.-]b\w*/ contained
syntax match TodoC /[+@.-]c\w*/ contained
syntax match TodoD /[+@.-]d\w*/ contained
syntax match TodoE /[+@.-]e\w*/ contained
syntax match TodoF /[+@.-]f\w*/ contained
syntax match TodoG /[+@.-]g\w*/ contained
syntax match TodoH /[+@.-]h\w*/ contained
syntax match TodoI /[+@.-]i\w*/ contained
syntax match TodoJ /[+@.-]j\w*/ contained
syntax match TodoK /[+@.-]k\w*/ contained
syntax match TodoL /[+@.-]l\w*/ contained
syntax match TodoM /[+@.-]m\w*/ contained
syntax match TodoN /[+@.-]n\w*/ contained
syntax match TodoO /[+@.-]o\w*/ contained
syntax match TodoP /[+@.-]p\w*/ contained
syntax match TodoQ /[+@.-]q\w*/ contained
syntax match TodoR /[+@.-]r\w*/ contained
syntax match TodoS /[+@.-]s\w*/ contained
syntax match TodoT /[+@.-]t\w*/ contained
syntax match TodoU /[+@.-]u\w*/ contained
syntax match TodoV /[+@.-]v\w*/ contained
syntax match TodoW /[+@.-]w\w*/ contained
syntax match TodoX /[+@.-]x\w*/ contained
syntax match TodoY /[+@.-]y\w*/ contained
syntax match TodoZ /[+@.-]z\w*/ contained

syntax match TodoTagA /a\w\+:/
syntax match TodoTagB /b\w\+:/
syntax match TodoTagC /c\w\+:/
syntax match TodoTagD /d\w\+:/
syntax match TodoTagE /e\w\+:/
syntax match TodoTagF /f\w\+:/
syntax match TodoTagG /g\w\+:/
syntax match TodoTagH /h\w\+:/
syntax match TodoTagI /i\w\+:/
syntax match TodoTagJ /j\w\+:/
syntax match TodoTagK /k\w\+:/
syntax match TodoTagL /l\w\+:/
syntax match TodoTagM /m\w\+:/
syntax match TodoTagN /n\w\+:/
syntax match TodoTagO /o\w\+:/
syntax match TodoTagP /p\w\+:/
syntax match TodoTagQ /q\w\+:/
syntax match TodoTagR /r\w\+:/
syntax match TodoTagS /s\w\+:/
syntax match TodoTagT /t\w\+:/
syntax match TodoTagU /u\w\+:/
syntax match TodoTagV /v\w\+:/
syntax match TodoTagW /w\w\+:/
syntax match TodoTagX /x\w\+:/
syntax match TodoTagY /y\w\+:/
syntax match TodoTagZ /z\w\+:/

syntax cluster TodoTagGroup add=TodoTagA,TodoTagB,TodoTagC,TodoTagD,TodoTagE,TodoTagF,TodoTagG,TodoTagH,TodoTagI,TodoTagJ,TodoTagK,TodoTagL,TodoTagM,TodoTagN,TodoTagO,TodoTagP,TodoTagQ,TodoTagR,TodoTagS,TodoTagT,TodoTagU,TodoTagV,TodoTagW,TodoTagX,TodoTagY,TodoTagZ

" syntax match TodoSubProject /+\w\+.\?/ contained

" syntax region TodoContext start=/@\w/ end=/\(\s\|$\)/ contains=TodoSubContext,TodoSubMiddle
" " syntax region TodoContext start=/@\w/ end=/$/ contains=TodoSubContext
" syntax match TodoSubContext /@\w\+/ contained
"
" syntax match TodoSubMiddle /\.\w\+/ contained
" " syntax match TodoSubContext /@\w\+.\?/ contained


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
" highlight  default  link  TodoContext    Special

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

highlight  default  link  TodoA  WinBar
highlight  default  link  TodoB  Identifier
highlight  default  link  TodoC  PreProc
highlight  default  link  TodoD  Statement
highlight  default  link  TodoE  Error
highlight  default  link  TodoF  @variable.parameter
highlight  default  link  TodoG  Constant
highlight  default  link  TodoH  WarningMsg
highlight  default  link  TodoI  String
highlight  default  link  TodoJ  Character
highlight  default  link  TodoK  Operator
highlight  default  link  TodoL  Label
highlight  default  link  TodoM  Function
highlight  default  link  TodoN  CursorLineNr
highlight  default  link  TodoO  WinBar
highlight  default  link  TodoP  Identifier
highlight  default  link  TodoQ  PreProc
highlight  default  link  TodoR  Statement
highlight  default  link  TodoS  Error
highlight  default  link  TodoT  @variable.parameter
highlight  default  link  TodoU  Constant
highlight  default  link  TodoV  WarningMsg
highlight  default  link  TodoW  String
highlight  default  link  TodoX  Character
highlight  default  link  TodoY  Operator
highlight  default  link  TodoZ  Label

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

highlight  default  link  TodoTagA  WinBar
highlight  default  link  TodoTagB  Identifier
highlight  default  link  TodoTagC  PreProc
highlight  default  link  TodoTagD  Statement
highlight  default  link  TodoTagE  Error
highlight  default  link  TodoTagF  @variable.parameter
highlight  default  link  TodoTagG  Constant
highlight  default  link  TodoTagH  WarningMsg
highlight  default  link  TodoTagI  String
highlight  default  link  TodoTagJ  Character
highlight  default  link  TodoTagK  Operator
highlight  default  link  TodoTagL  Label
highlight  default  link  TodoTagM  Function
highlight  default  link  TodoTagN  CursorLineNr
highlight  default  link  TodoTagO  WinBar
highlight  default  link  TodoTagP  Identifier
highlight  default  link  TodoTagQ  PreProc
highlight  default  link  TodoTagR  Statement
highlight  default  link  TodoTagS  Error
highlight  default  link  TodoTagT  @variable.parameter
highlight  default  link  TodoTagU  Constant
highlight  default  link  TodoTagV  WarningMsg
highlight  default  link  TodoTagW  String
highlight  default  link  TodoTagX  Character
highlight  default  link  TodoTagY  Operator
highlight  default  link  TodoTagZ  Label

" highlight  default  link  TodoSubProject  Label
" highlight  default  link  TodoSubProjectN  WarningMsg
" highlight  default  link  TodoSubContext  Error
" highlight  default  link  TodoSubMiddle  WarningMsg

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

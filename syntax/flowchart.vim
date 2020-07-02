if exists('b:current_syntax')
  let s:current_syntax = b:current_syntax
  unlet b:current_syntax
endif

syntax match flowType /start:/
syntax match flowType /end:/
syntax match flowType /operation:/
syntax match flowType /subroutine:/
syntax match flowType /condition:/
syntax match flowType /inputoutput:/
syntax match flowOperator /=>/
syntax match flowOperator /->/
syntax region flowString matchgroup=Special start=/\v:\s/ end=/\v$/
highlight link flowType Type
highlight link flowOperator Keyword
highlight link flowString String

if exists('s:current_syntax')
  let b:current_syntax = s:current_syntax
else
  let b:current_syntax = 'flowchart'
endif

if exists("b:current_syntax")
  finish
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

let b:current_syntax = 'flow'

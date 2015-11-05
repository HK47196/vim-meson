" Meson syntax file
" Language:	Meson
" Maintainers:	Trinh Anh Ngoc (atw1990@gmail.com)
" Last Change: 	2015-09-19
" Filenames: 	meson.build
"
" REFERENCES:
" [1] https://github.com/mesonbuild/meson

if exists("b:current_syntax")
  finish
endif

syn keyword mesonStatement if else elif endif and or not foreach endforeach
syn keyword mesonConstant  true false

syn region mesonString start="'" end="'"

syn match mesonFunction "\w\+\(\s*(\)\@="
syn match mesonComment  "#.*$"

let b:current_syntax = "meson"

hi def link mesonStatement Statement
hi def link mesonConstant  Constant
hi def link mesonString    String
hi def link mesonFunction  Function
hi def link mesonComment   Comment

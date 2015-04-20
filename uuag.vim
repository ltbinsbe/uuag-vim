" Vim syntax file
" Language: Utrecht University Attribute Grammar
" Maintainer: L. Thomas van Binsbergen
" Latest Revision: 14/04/2015

if exists("b:current_syntax")
  finish
endif

syntax include @HS syntax/haskell.vim
let b:current_syntax = "uuag"

syn keyword uuagPreProc imports include IMPORTS INCLUDE module MODULE deriving DERIVING
syn keyword uuagKeywords attr ATTR data DATA syn SYN inh INH chn CHN sem SEM 
syn keyword uuagStatement loc lhs inst LOC LHS INST
syn keyword uuagTodo Todo TODO
syn match uuagKeywords '|'
syn match uuagKeywords '{'
syn match uuagKeywords '}'
syn match uuagKeywords '::'
syn match uuagKeywords ':'
syn match uuagComment "--.*$" contains=uuagTodo

syntax region uuagHS matchgroup=HS start="{" end="}" contains=@HS,uuagAttr,uuagChild
syn match uuagChild "[@][a-z][a-z]*"
syn match uuagAttr "[@][a-z][a-zA-Z]*\.[a-z][a-zA-Z]*"
syntax region uuagHS matchgroup=HS start="= " end="\n\n" contains=@HS,uuagAttr,uuagChild
syn match uuagKeywords '='
syn region uuagComment start="{-" end="-}"

highlight link uuagKeywords Keyword
highlight link uuagProd Type
highlight link uuagOp Keyword
highlight link uuagStatement Statement
highlight link uuagAttr Constant 
highlight link uuagChild Type
highlight link uuagComment Comment
highlight link uuagTodo Todo
highlight link uuagPreProc PreProc

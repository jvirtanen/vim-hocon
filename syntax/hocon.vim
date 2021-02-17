" Vim syntax file
" Language:   HOCON
" Maintainer: Jussi Virtanen
" Repository: https://github.com/jvirtanen/vim-hocon
" License:    Vim

if exists('b:current_syntax')
  finish
end

syn keyword hoconNull null

syn keyword hoconBoolean true false yes no on off

syn match hoconUnquoted /\%(\S\&[^,]\)\+/

syn keyword hoconFunction include

syn match hoconFunction    /\w\+(/ contains=hoconParenthesis
syn match hoconParenthesis /(/

syn region hoconSubstitution start=/\${/ end=/}/

syn region hoconString start=/"/   end=/"/   contains=hoconEscape
syn region hoconString start=/"""/ end=/"""/ contains=hoconEscape

syn match hoconEscape /\\"/
syn match hoconEscape /\\\\/
syn match hoconEscape /\\\//
syn match hoconEscape /\\b/
syn match hoconEscape /\\f/
syn match hoconEscape /\\n/
syn match hoconEscape /\\r/
syn match hoconEscape /\\t/
syn match hoconEscape /\\u\x\{4\}/

syn match hoconField /\h\%(\w\|\d\|[-.]\)*\s*=/
syn match hoconField /\h\%(\w\|\d\|[-.]\)*\s*:/
syn match hoconField /\h\%(\w\|\d\|[-.]\)*\s*+=/

syn match hoconObject /\h\%(\w\|\d\|[-.]\)*\s*{/

syn match hoconFieldName /\h\%(\w\|\d\|[-.]\)*/ contained containedin=hoconField,hoconObject

syn match hoconUnit /\w\+/ contained

syn match hoconNumber /-\?\d\+\%([eE][+-]\?\d\+\)\?\w*\%(\s\|[}\],]\|$\)/ contains=hoconSeparator nextgroup=hoconUnit
syn match hoconNumber /-\?\d*\.\d\+\%([eE][+-]\?\d\+\)\?\w*\%(\s\|[}\],]\|$\)/ contains=hoconSeparator nextgroup=hoconUnit

syn match hoconOperator /=/
syn match hoconOperator /:/
syn match hoconOperator /+=/

syn match hoconSeparator /{/
syn match hoconSeparator /}/
syn match hoconSeparator /\[/
syn match hoconSeparator /\]/
syn match hoconSeparator /,/

syn region hoconComment start=/\/\// end=/$/ contains=hoconTodo
syn region hoconComment start=/\#/   end=/$/ contains=hoconTodo

syn keyword hoconTodo TODO FIXME XXX DEBUG NOTE contained

hi def link hoconNull         Constant
hi def link hoconBoolean      Boolean
hi def link hoconUnquoted     String
hi def link hoconFunction     Function
hi def link hoconSubstitution PreProc
hi def link hoconString       String
hi def link hoconEscape       Special
hi def link hoconUnit         Number
hi def link hoconNumber       Number
hi def link hoconComment      Comment
hi def link hoconTodo         Todo

let b:current_syntax = 'hocon'

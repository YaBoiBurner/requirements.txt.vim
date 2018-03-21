" the Requirements File Format syntax support for Vim
" Version: 1.5.0
" Author:  raimon <raimon49@hotmail.com>
" License: MIT LICENSE

if exists("b:current_syntax") && b:current_syntax == "requirements"
    finish
endif

syn case match

syn region requirementsComment start="[ \t]*#" end="$"
syn match requirementsCommandOption "\v^\[?--?[a-zA-Z\-]*\]?"
syn match requirementsVersionSpecifiers "\v(\=\=\=?|\<\=?|\>\=?|\~\=|\!\=)"
syn match requirementsPackageName "\v^([a-zA-Z0-9][a-zA-Z0-9\-_\.]*[a-zA-Z0-9])"
syn match requirementsExtras "\v\[\S+\]"
syn match requirementsVersionControls "\v(git\+?|hg\+|svn\+|bzr\+)\S+"
syn match requirementsURLs "\v\@\s\S+"
syn match requirementsEnvironmentMarkers "\v;\s.+$"

hi link requirementsComment Comment
hi link requirementsCommandOption Special
hi link requirementsVersionSpecifiers Boolean
hi link requirementsPackageName Identifier
hi link requirementsExtras Type
hi link requirementsVersionControls Underlined
hi link requirementsURLs Underlined
hi link requirementsEnvironmentMarkers Macro

let b:current_syntax = "requirements"

" vim: et sw=4 ts=4 sts=4:

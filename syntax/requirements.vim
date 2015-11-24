syn match requirementsComment "#.*$"
syn match requirementsCommandOption "\v^\[?--?[a-zA-Z\-]*\]?"
syn match requirementsVersionSpecifiers "\v(\=\=\=?|\<\=?|\>\=?|\~\=|\!\=)"

hi link requirementsComment Comment
hi link requirementsCommandOption Special
hi link requirementsVersionspecifiers Boolean

" vim: et sw=4 ts=4 sts=4:

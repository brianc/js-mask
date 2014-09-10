" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear jsFunction
syntax match   jsFunction       /\<function\>/ nextgroup=jsFuncName,jsFuncArgs skipwhite conceal cchar=ƒ

hi! link Conceal jsFunction

set conceallevel=2

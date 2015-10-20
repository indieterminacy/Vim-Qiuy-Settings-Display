"= 50 Environment
    " enable folding
        set foldenable
"= 60 System
"== 40 FoldMethod
    " set foldmethod=syntax
    "" start out with everything unfolded
        " set foldlevelstart=99
"== 60 Scripts
"=== 60 Script_01
    " which commands trigger auto-unfold
        function! MyFoldText()
          let line = getline(v:foldstart)
          let nucolwidth = &fdc + &number * &numberwidth
          let windowwidth = winwidth(0) - nucolwidth - 3
          let foldedlinecount = v:foldend - v:foldstart
        set foldtext=MyFoldText()
        " Toggle the foldcolumn
            nnoremap <leader>f :call FoldColumnToggle()<cr>
        " Pick a sane default for the foldcolumn
            let g:last_fold_column_width = 4
        endfunction
"=== 60 Script_02
    function! FoldColumnToggle()
      if &foldcolumn
    let g:last_fold_column_width = &foldcolumn
    setlocal foldcolumn=0
      else
    let &l:foldcolumn = g:last_fold_column_width
      endif
    endfunction
"= 20 Content
"== 20 ContentTypes
    " add a fold column
    " Add a bit extra margin to the left
        set foldcolumn=4
        set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
"= Break
"======== 60 Fold Function
    " function BoldLevel()
        " let h = matchstr(getline(v:lnum), '^"=\+')
        " if empty(h)
        "     endif
	" endfunction
"======= 50 Environment
"======== 50 Local Fold Settings
    " au BufEnter *.vim setlocal foldexpr=BoldLevel()
    " au BufEnter *.vim setlocal foldmethod=expr
        " Required
		filetype plugin indent on
	    " Uncomment the following to have Vim load indentation rules and plugins
	    " according to the detected filetype.
		" if has("autocmd")
		"  filetype plugin indent on
		" endif

"= 20 Content
    " change the terminal's title
        set title
"= 60 System
"== Format
"set statusline=
"   \ %{HasPaste()}%F%m%r%h
"   \ %w
"   \ \ CWD:
"   \ %r%{getcwd()}%h\ \
"   \
    "Line:
    "\ %l
"== Status Tools
"=== 60 Airline Settings
    "Airline compatability with vim.ctrl-space
        " let g:airline_exclude_preview = 1
    " Enable the list of buffers
        " let g:airline#extensions#tabline#enabled = 1
    " Show just the filename
        " let g:airline#extensions#tabline#fnamemod = ':t'
"=== 60 ATP Settings
        let g:atp_ProgressBar = 1
"=== 60 CtrlSpace
    " Ctrl-space settings for tabline
        " let g:ctrlspace_use_tabline = 0
"=== 60 Fugitive
    "Vim-Statline
        let g:statline_fugitive = 1
"= 30 Icons
"== 60 Vim-Devicons
" returns the font character that represents the icon
" parameters: a:1 (filename), a:2 (isDirectory)
" both parameters optional
" by default without parameters uses buffer name
" WebDevIconsGetFileTypeSymbol(...)

" returns the font character that represents
" the file format as an icon (windows, linux, mac)
" WebDevIconsGetFileFormatSymbol()

" Show Tabline
    set showtabline=2 " Always display the tabline, even if there is only one tab
    set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" Tabs are 4 characters
    set tabstop=4
" Spaces instead of tabs
" Is this appropriate?
    set expandtab
" Expand tabs into spaces
    let onetab = strpart(' ', 0, &tabstop)
" Be smart when using tabs ;)
    set smarttab
    set shiftwidth=4
" Show tabs and newline characters with ,s
    set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮,nbsp:×,eol:£

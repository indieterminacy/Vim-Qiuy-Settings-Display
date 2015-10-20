"= 20 Content
"== 20 Text Objects
"=== 30 Character Colours
    " Invisible character colors
            highlight NonText guifg=#4a4a59
            highlight SpecialKey guifg=#4a4a59
"=== 30 Parentheses Colours
    " Show matching brackets.
        " set showmatch
    "Rainbow Activation
        let g:rainbow_active = 1
	" show matching braces
        set showmatch
	" How many tenths of a second to blink when matching brackets
        set mat=1
" Rainbow Settings
	    let g:rainbow_conf = {
		  \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
		  \   'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta', 'darkcyan'],
		  \   'operators': '_,_',
		  \   'parentheses': [['(',')'], ['\[','\]'], ['{','}']],
		  \   'separately': {
		  \       '*': {},
		  \       'lisp': {
		  \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
		  \           'ctermfgs': ['darkgray', 'darkblue', 'darkmagenta', 'darkcyan', 'darkred', 'darkgreen'],
		  \       },
		  \       'html': {
		  \           'parentheses': [['(',')'], ['\[','\]'], ['{','}'], ['<\a[^>]*[^/]>\|<\a>','</[^>]*>']],
		  \       },
		  \       'tex': {
		  \           'operators': '',
		  \           'parentheses': [['(',')'], ['\[','\]']],
		  \       },
		  \   }
		  \}
"== 30 Diff Colours
    " If in diff mode (vimdiff) use the inkpot color scheme
    " It highlights file differences
	" Vim Tip #1143
        if &diff
              colors inkpot
        endif
"= 50 Environment
"== 60 Select Colourscheme
    "For colourscheme
        syntax enable
        set bg=dark
        try
         colorscheme jellybeans
         " colorscheme mustang
         " colorscheme seoul256
         " colorscheme mustang_silent
         " colorscheme molokai
         " colorscheme railscat
         " colorscheme kellys
         " colorscheme wombat256
         " colorscheme badwolf
        catch
        endtry
"= 60 System
"== 60 Colourschemes
"=== Ctrlspace
    "ctrlspace colour settings
            hi def link CtrlSpaceNormal   Normal
            hi def link CtrlSpaceSelected Visual
            hi def link CtrlSpaceSearch   IncSearch
            hi def link CtrlSpaceStatus   StatusLine
	"ctrlspace settings to go with Seoule256
            hi CtrlSpaceSelected term=reverse ctermfg=187   guifg=#d7d7af ctermbg=23    guibg=#005f5f cterm=bold
            hi CtrlSpaceNormal   term=NONE    ctermfg=244   guifg=#808080 ctermbg=232   guibg=#080808 cterm=NONE
            hi CtrlSpaceSearch   ctermfg=220  guifg=#ffd700 ctermbg=NONE  guibg=NONE    cterm=bold
            hi CtrlSpaceStatus   ctermfg=230  guifg=#ffffd7 ctermbg=234   guibg=#1c1c1c cterm=NONE
"== 60 Syntax
    " syntax highlight
        syntax on
    " Enable syntax highlighting with 256 color support so we0" can use
    " nicer color schemes. For more information and to0" get some nice
    " color schemes check:
    "   http://www.frexx.de/xterm-256-notes/0" Tested with Konsole-2.1 and
    "   yakuake 2.9.40
        set t_Co=256

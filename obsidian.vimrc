" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
nmap <C-a> VGgg
nmap <A-a> VGgg
" beginning and end of line
nmap H _
nmap L $
nmap J 5j
nmap K 5k

"noremap n b
"noremap m w
"noremap w n

"noremap j n
"noremap l i
"noremap k e
"noremap h o
"noremap n h
"noremap e j 
"noremap i k
"noremap o l



exmap jumpToLink obcommand mrj-jump-to-link:activate-lightspeed-jump
nmap s :jumpToLink<CR>

" Quickly remove search highlights
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
"exmap back obcommand app:go-back
"nmap <C-o> :back
"exmap forward obcommand app:go-forward
"nmap <C-i> :forward



" Have j and k navigate visual lines rather than logical ones
nmap j gj
nmap k gk
nmap <C-a> GVgg
" beginning and end of line
nmap H _
nmap L $
nmap J gj
nmap K gk
" Quickly remove search highlights
nmap <F9> :nohl

" Yank to system clipboard
set clipboard=unnamed

" Go back and forward with Ctrl+O and Ctrl+I
" (make sure to remove default Obsidian shortcuts for these to work)
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward



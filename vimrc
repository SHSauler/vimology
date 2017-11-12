" REQUIREMENT: 'DEPLOY ANYWHERE' VIMRC THAT WORKS WITHOUT EXTERNAL PLUGINS

color ron
syntax enable
filetype plugin on

" https://jeffkreeftmeijer.com/vim-number/
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" https://github.com/mcantor/no_plugins
" find files
set path+=**

" tab complete files
set wildmenu

" jump tags
command! MakeTags !ctags -R .

" templates
nnoremap ,html :-1read $HOME/.vim/skel/html<CR>3jwf>a
nnoremap ,python :-1read $HOME/.vim/skel/python<CR>3jwf>a

" file browser
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'


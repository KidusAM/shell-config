" LINE NUMBERS - show line numbers
set number

" indentation linux kernel style
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set cindent

""since python seems stubborn
"filetype plugin on
"filetype indent on
"augroup python
"    autocmd!
"    autocmd FileType python setlocal ts=8 sts=8 sw=8 noet
"augroup end


"Backups - Keep backups in the ~/.backups dir

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
    set undodir=~/.backup
  endif
endif

" Prepend ~/.backup to backupdir so that Vim will look for that directory
set backupdir^=~/.backup

" Also use ~/.backup for swap files. Trailing // includes full path
set dir^=~/.backup//

"set no search highlighting
set nohlsearch


" set <leader># to go to that tab
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt

" strip trailing whitespace

function! <SID>StripTrailingWhitespaces()
  if !&binary && &filetype != 'diff'
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
  endif
endfun

autocmd FileType c,cpp,java,php,ruby,python,vim autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

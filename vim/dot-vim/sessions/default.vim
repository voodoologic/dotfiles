" ~/dotfiles/vim/dot-vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 13 February 2021 at 23:10:49.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'solarized' | colorscheme solarized | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/runbook_projects
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/Tools/ansible/tasks/brew/brew-packages.yml
set stal=2
tabnew
tabnew
tabnew
tabnew
tabrewind
edit ~/.vimrc
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 99 + 99) / 199)
exe 'vert 2resize ' . ((&columns * 99 + 99) / 199)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 19 - ((18 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 013|
lcd ~/Tools/ansible/tasks/brew
wincmd w
argglobal
if bufexists("~/Tools/ansible/tasks/brew/brew-packages.yml") | buffer ~/Tools/ansible/tasks/brew/brew-packages.yml | else | edit ~/Tools/ansible/tasks/brew/brew-packages.yml | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 4 - ((3 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 03|
wincmd w
exe 'vert 1resize ' . ((&columns * 99 + 99) / 199)
exe 'vert 2resize ' . ((&columns * 99 + 99) / 199)
tabnext
edit ~/Tools/ansible/tasks/brew/essential.yml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 99) / 199)
exe 'vert 2resize ' . ((&columns * 107 + 99) / 199)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 26 - ((25 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
lcd ~/Tools/ansible/tasks/brew
wincmd w
argglobal
if bufexists("~/runbook_projects/lib/libraries_to_install.rb") | buffer ~/runbook_projects/lib/libraries_to_install.rb | else | edit ~/runbook_projects/lib/libraries_to_install.rb | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
1
silent! normal! zo
17
silent! normal! zo
114
silent! normal! zo
let s:l = 120 - ((25 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
120
let s:c = 68 - ((34 * winwidth(0) + 53) / 107)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 68 . '|'
else
  normal! 068|
endif
wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 99) / 199)
exe 'vert 2resize ' . ((&columns * 107 + 99) / 199)
tabnext
edit ~/Tools/ansible/tasks/brew/virtual-tools.yml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 99 + 99) / 199)
exe '2resize ' . ((&lines * 5 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 99 + 99) / 199)
exe '3resize ' . ((&lines * 37 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 99 + 99) / 199)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 31 - ((30 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 0
lcd ~/Tools/ansible/tasks/brew
wincmd w
argglobal
if bufexists("~/Tools/ansible/tasks/brew/security.yml") | buffer ~/Tools/ansible/tasks/brew/security.yml | else | edit ~/Tools/ansible/tasks/brew/security.yml | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 7 - ((4 * winheight(0) + 2) / 5)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 017|
lcd ~/Tools/ansible/tasks/brew
wincmd w
argglobal
if bufexists("~/Tools/ansible/tasks/brew/ancillary.yml") | buffer ~/Tools/ansible/tasks/brew/ancillary.yml | else | edit ~/Tools/ansible/tasks/brew/ancillary.yml | endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
25
silent! normal! zo
let s:l = 24 - ((18 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 0
lcd ~/Tools/ansible/tasks/brew
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 99 + 99) / 199)
exe '2resize ' . ((&lines * 5 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 99 + 99) / 199)
exe '3resize ' . ((&lines * 37 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 99 + 99) / 199)
tabnext
edit ~/Tools/ansible/inventory/main.yml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 11 - ((10 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 032|
lcd ~/runbook_projects
tabnext
edit ~/Tools/ansible/tasks/brew/check_for_brew.yml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
lcd ~/Tools/ansible/tasks/brew
tabnext 3
set stal=1
badd +1 ~/runbook_projects/\[Vundle]\ Installer
badd +5 ~/Tools/ansible/tasks/brew/brew-packages.yml
badd +8 ~/Tools/ansible/tasks/brew/essential.yml
badd +1 ~/Tools/ansible/tasks/brew/virtual-tools.yml
badd +1 ~/runbook_projects
badd +1 ~/Tools/ansible/tasks/brew/check_for_brew.yml
badd +19 ~/.vimrc
badd +1 ~/runbook_projects/lib/libraries_to_install.rb
badd +1 ~/Tools/ansible/tasks/brew/security.yml
badd +8 ~/Tools/ansible/tasks/brew/ancillary.yml
badd +1 ~/Tools/ansible/tasks/brew/\[Vundle]\ Installer
badd +1 ~/Tools/ansible/tasks/brew
badd +0 ~/Tools/ansible/inventory/main.yml
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=999 winwidth=84 shortmess=aOstT
set winminheight=5 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

3wincmd w
tabnext 3
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128

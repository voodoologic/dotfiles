" ~/dotfiles/vim/dot-vim/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 22 February 2021 at 09:50:01.
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
cd ~/Work/docker-hatorade/rails-hatorade
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/Tools/ansible/tasks/brew/brew-packages.yml
set stal=2
tabnew
tabrewind
edit ~/Work/projector-1.2.0/Gemfile
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={,}
setlocal fdi=#
setlocal fdl=100
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 26 - ((8 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
26
normal! 0
lcd /Volumes/Doug.Personal/Resources/Hack
tabnext
edit ~/Work/projector-1.2.0/app/controllers/users_controller.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
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
20
silent! normal! zo
31
silent! normal! zo
50
silent! normal! zo
let s:l = 4 - ((3 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 037|
lcd /Volumes/Doug.Personal/Resources/Hack
tabnext 2
set stal=1
badd +1 ~/Work/projector-1.2.0/Gemfile
badd +33 ~/Tools/ansible/tasks/brew/brew-packages.yml
badd +17 ~/Work/projector-1.2.0/config/database.yml
badd +1 ~/Tools/ansible/tasks/brew/ancillary.yml
badd +12 ~/scripts.sh
badd +313 ~/.vimrc
badd +26 ~/Tools/ansible/tasks/brew/essential.yml
badd +37 ~/Tools/ansible/tasks/brew/virtual-tools.yml
badd +11 ~/Tools/ansible/inventory/main.yml
badd +6 ~/Tools/ansible/tasks/brew/check_for_brew.yml
badd +1 ~/runbook_projects/lib/libraries_to_install.rb
badd +7 ~/Tools/ansible/tasks/brew/security.yml
badd +1 ~/Tools/ansible/inventory
badd +1 ~/Work/projector-1.2.0/Guardfile
badd +1 ~/Work/projector-1.2.0/config/environments/test.rb
badd +1 ~/
badd +1 ~/dotfiles/tmux/dot-tmuxinator/projector.yml
badd +7 /Volumes/Doug.Personal/Resources/Sandbox/hatorade/app/controllers/stream.js
badd +2 ~/Work/docker-hatorade/rails-hatorade/app/models/tweet.rb
badd +7 ~/Work/projector-1.2.0/app/models/user.rb
badd +23 ~/Work/projector-1.2.0/spec/models/user_spec.rb
badd +4 ~/Work/projector-1.2.0/app/models/company.rb
badd +5 ~/Work/projector-1.2.0/app/models/project.rb
badd +5 ~/Work/projector-1.2.0/db/migrate/20210222160308_projects_users.rb
badd +2 ~/Work/projector-1.2.0/db/migrate/20201023122520_create_companies.rb
badd +3 ~/Work/projector-1.2.0/db/migrate/20201023193559_create_join_table_user_company.rb
badd +9 ~/Work/projector-1.2.0/config/routes.rb
badd +11 ~/Work/projector-1.2.0/app/controllers/projects_controller.rb
badd +50 ~/Work/projector-1.2.0/app/controllers/companies_controller.rb
badd +26 ~/Work/docker-hatorade/rails-hatorade/app/models/user.rb
badd +7 ~/Work/projector-1.2.0/db/migrate/20210222163022_add_devise_to_users.rb
badd +3 ~/Work/projector-1.2.0/app/controllers/users_controller.rb
badd +7 ~/Work/docker-hatorade/rails-hatorade/app/controllers/users_controller.rb
badd +2 ~/Work/docker-hatorade/rails-hatorade/app/controllers/application_controller.rb
badd +14 ~/Work/docker-hatorade/rails-hatorade/app/controllers/omniauth_callbacks_controller.rb
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

1wincmd w
tabnext 2
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

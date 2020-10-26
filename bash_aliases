alias hate='cd ~/Sandbox/hatorade'
alias daemon='cd ~/Work/docker-hatorade/daemon-hatorade'
alias sand='cd ~/Sandbox'
alias tools='cd ~/Tools'
alias hack='cd ~/Hack'
alias movies='cd ~/Movies'
alias videos='cd ~/Videos'
alias work='cd ~/Work'
alias train='cd ~/Training'
alias down="cd ~/Downloads"
alias wine64='wine64-development'
alias owd='cd $OLDPWD'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

#work
if [ -f $HOME/.work_aliases ]
then
  source $HOME/.work_aliases
fi

#hatorade
alias sande='cd ~/Sandbox/ember-hatorade'
alias sandr='cd ~/Sandbox/rails-hatorade'
alias sandd='cd ~/Sandbox/docker-hatorade'
alias akam='cd ~/Sandbox/akamadoshi'
alias espn='cd ~/Sandbox/espn'

#utilities
alias vi='vim'
alias ll='ls -lah'
alias l='exa -l -T -L 2 --header --git-ignore -F -d -I node_modules'
alias ugh='pushd ./ && cd && popd'
alias h='history'
alias tmux='tmux -2'
alias mux='tmuxinator'
alias dco='docker-compose'

#git
alias gits='git status'
alias gita='git add'
alias gitau='git add -u'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gitd.="git diff --color-words='.'"
alias gitdc.="git diff --cached --color-words='.'"
alias gitc='git commit -v'
alias gitb='git branch -v'
alias gitl='git log -p'
alias gitlg='gitl --graph'
alias gitlc='git log "$concise_logging_format"'
alias gitlcg='gitlc --graph'
alias gitlg='git log -p -g'
alias gitlor_raw='git --no-pager log --graph ORIG_HEAD..HEAD "$concise_logging_format"'
alias gitlorp='gitlor_raw -p'
alias gitup='git pull && gitlor && git submodule update'
alias gitp='gitup && gitlpend && git push'
alias gitpt='gitp && git push --tags'

alias gst="git status"
alias ga="git add"
alias gp="git push"
alias gl="git log"
alias gm="git commit -m"
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

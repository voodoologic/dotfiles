alias hate='cd ~/Sandbox/docker-hatorade'
alias sand='cd ~/Sandbox'
alias tools='cd ~/Tools'
alias hack='cd ~/Hack'
alias movies='cd ~/Movies'
alias videos='cd ~/Videos'
alias work='cd ~/Work'
#hatorade
alias sande='cd ~/Sandbox/ember-hatorade'
alias sandr='cd ~/Sandbox/rails-hatorade'
alias sandd='cd ~/Sandbox/docker-hatorade'
alias akam='cd ~/Sandbox/akamadoshi'
alias owd='cd $OLDPWD'
#utilities
alias ll='ls -lah'
alias ugh='pushd ./ && cd && popd'
alias h='history'
alias rap="bundle exec pry -r ./config/environment"
alias ras="LOG_TO_STDOUT=false bundle exec unicorn -p 3000 -c ./config/unicorn.rb"
alias guard="bundle exec guard -i"
alias tmux='tmux -2'
alias down="cd ~/Downloads"
alias hconsole='heroku run console'
alias espn='cd ~/Sandbox/espn'
alias mux='tmuxinator'
alias dco='docker-compose'
#work
alias fugu='cd $HOME/Work/fugu'
alias directory='cd $HOME/Work/directory'
alias payments='cd $HOME/Work/posabit-payments'
#pry p
alias gits='git status'
alias gita='git add'
alias gitau='git add -u'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gitdw="git diff $color_ruby_words"
alias gitdcw="git diff --cached $color_ruby_words"
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
alias gitlpend_raw='git --no-pager log --graph $(git config branch.`git-branch-name`.remote)/`git-branch-name`..HEAD "$concise_logging_format"'
alias gitlor='echo -e "commits from ${color_red}ORIG_HEAD${color_none} to ${color_red}HEAD${color_none}" &&
  gitlor_raw && echo'
alias gitlpend='echo -e "commits from ${color_red}$(git config branch.`git-branch-name`.remote)/`git-branch-name`${color_none} to ${color_red}HEAD${color_none}" &&
  gitlpend_raw && echo'
alias gitlorp='gitlor_raw -p'
alias gitup='git pull && gitlor && git submodule update'
alias gitp='gitup && gitlpend && git push'
alias gitpt='gitp && git push --tags'

alias git-set-remote='echo git config branch.`git-branch-name`.remote "$1" && echo git config branch.`git-branch-name`.merge "refs/heads/$2"'alias gma="git commit -am"
alias gst="git status"
alias ga="git add"
alias gp="git push"
alias gl="git log"
alias gm="git commit -m"
function git-branch-name {
  git symbolic-ref HEAD | sed 's/.*\///'
}
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

concise_logging_format='--pretty=format:%Cblue%h%Creset %cr %Cgreen%an%Creset %s'
color_ruby_words="--color-words='(:|@|@@|\$)?[a-zA-Z_][a-zA-Z0-9_]*[?!]?'"
alias pimount='sshfs pi@192.168.1.125:/home/pi/External ~/External'
alias vi='vim'

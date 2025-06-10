if uname -a | grep -i freebsd > /dev/null
then
	alias ls='ls -G'
else
	alias ls='ls --color=auto'
fi
alias ll='ls -l'
alias grep='grep --color=auto'
alias vi=vim
alias cd..2='cd ../..'
alias cd..3='cd ../../..'
alias cd..4='cd ../../../..'
alias cd..5='cd ../../../../..'
alias cd..6='cd ../../../../../..'
alias cd..7='cd ../../../../../../..'
alias cd..8='cd ../../../../../../../..'
alias cd..9='cd ../../../../../../../../..'
alias newest='find . -type f -exec ls -1lt "{}" + | head '
alias short='egrep -v ".{120}"'

alias json="python -mjson.tool"
alias gitsearch='git rev-list --all | xargs git grep -F'

cls() { cd "$1" && ls; }
alias ipinfo="curl ifconfig.me && curl ifconfig.me/host"

alias dc=docker-compose
alias tpl='yes y | tmuxp load .'

alias dive='docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive:latest'

alias tmd='tmux attach || tmux new'
alias emacs='emacs -nw'

alias pc=proxychains
alias howdoi="pc uv tool run --python 3.12 howdoi -c"
alias sv=supervisorctl

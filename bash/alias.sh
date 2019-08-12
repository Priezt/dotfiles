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


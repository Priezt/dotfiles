#complete -W "$(rake -T | awk '{print $2}')" rake

export COMP_WORDBREAKS=${COMP_WORDBREAKS/\:/}

function _rakecomplete() {
	local tasks=`rake -T | awk '{print $2}'`
	COMPREPLY=($(compgen -W "${tasks}" -- ${COMP_WORDS[COMP_CWORD]}))
	return 0
}

complete -o default -o nospace -F _rakecomplete rake
_make_variables()
{
	local cur=${COMP_WORDS[COMP_CWORD]}
	local var=$(make -p Makefile | egrep '^[a-zA-Z0-9_ ]+:' | sed 's/ .*//'| sed 's/:.*//')
	compopt -o nospace
	COMPREPLY=( $(compgen -W "${var}" -- ${cur}) )
}
complete -F _make_variables make

complete -c which
complete -c man
complete -c sudo

#export IFS=" "
#complete -W "submit sync integrate edit revert" p4 # this shit will prevent p4 from filename completion

if which kubectl > /dev/null ; then
	source <(kubectl completion bash)
	alias k=kubectl
	source <(kubectl completion bash | sed s/kubectl/k/g)
fi


#bash_profile
export PS1="\033[36m\][\t]\$(parse_git_branch): \[\033[33;1m\]\W\[\033[m\]\$ "

# https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# https://medium.com/fusionqa/autocomplete-git-commands-and-branch-names-in-terminal-on-mac-os-x-4e0beac0388a#bba2
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias ls='ls -GF'
alias la='ls -alGF'
alias openin='open -a'
alias cd..='cd ..'

termName(){
	printf '\e]1;%s\a' $1
}

mkcd () {
    mkdir -p $1
    cd $1
}

zipp () {
	zip -r archive.zip $1 -x "*.DS_Store"
}

cdd (){
	if [ $# -eq 0 ]
	then
    	cd ..
	else
		cd $1
	fi

	pwd
	ls
}

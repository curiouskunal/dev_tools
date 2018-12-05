
# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

alias dev..='export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "'

alias dev='
	clear;
	echo "";
	date;
	pwd;
	echo "";
	export PS1="\033[36m\][\t]: \[\033[33;1m\]\W\[\033[m\]\$ "'

alias ls='ls -GF'
alias la='ls -alGF'
alias openin='open -a'

alias cd..='cd ..'

alias pilogin='ssh pi@192.168.1.44'

alias joinPDF='/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py'

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
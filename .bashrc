#
# ~/.bashrc
#
# skyler


# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If there is a default location, cd to it
defaultLocation='/tmp/defaultTerminalLocation'
if [ -s $defaultLocation ]; then
    if [ -d `cat $defaultLocation` ]; then
        cd `cat $defaultLocation`;
    fi
fi

if [[ "$SHELL" == '/bin/zsh' ]]; then
    #PS1="%{\e[95m!%}\! \e[32m[\T] \e[91m$(whoami)\e[36m@\h \e[31m\w\e[39m\n# "
    PS1="!%F{198}%! %F{2}[%T] %F{33}%n%F{15}@%F{31}%m %~%F{15}
# "
elif [[ "$SHELL" == '/bin/bash' ]]; then
    if [[ ! -z `command -v powerline` ]]; then
        powerline-daemon -q
        POWERLINE_BASH_CONTINUATION=1
        POWERLINE_BASH_SELECT=1
        . /usr/share/powerline/bindings/bash/powerline.sh
    else 
        if [[ $(whoami) == 'root' ]]; then
            PS1="\e[95m!\! \e[32m[\T] \e[91m$(whoami)\e[36m@\h \e[31m\w\e[39m\n# "
        else
            PS1="\e[95m!\! \e[32m[\T] \e[36m$(whoami)@\h \e[31m\w\e[39m\n# "
        fi
    fi

    shopt -s cdspell
fi

set -o vi

lt() {
    ls -t $1 | head
}

alias ls='ls -F'
alias la='ls -A'
alias ll='ls -alh'
alias l='ls'
alias g='if [ -s $defaultLocation ]; then if [ -d `cat $defaultLocation` ]; then cd $(cat /tmp/defaultTerminalLocation); fi; fi'
alias dtd="pwd > /tmp/defaultTerminalLocation"

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias c='clear'
alias j='jobs'
alias k='kill'

alias src='source ~/.bash_profile'
alias make='make -j 16'

if [ ! -z `command -v htop` ]; then
    alias top=htop
fi

if [ ! -z `command -v pacman` ]; then
    alias pm='sudo pacman'
fi

alias mvn='mvn -T 16'

alias ebrc='vi ~/.bashrc && source ~/.bashrc'
alias ei3='vi ~/.config/i3/config'
alias pdb='python3 -m pdb'
alias python='python3'
alias tree='tree -C'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'

alias gs='git status'
alias gpush='git push'
alias gpul='git pull'
alias gc='git commit'
alias ga='git add'
alias gb='git branch'
alias gch='git checkout'
alias gl='git log --graph'
alias glo='git log --oneline --graph'
alias gla='git log --graph --all'
alias gloa='git log --oneline --graph --all'
alias glav='git log --graph --all'
alias gsta='git stash'
alias gdiff='git diff'
alias gdif='git diff'

alias sctl='sudo systemctl'


if [[ "$OSTYPE" == "darwin"* ]]; then
    alias bbedit='open -a BBEdit'
    alias paste='pbpaste'
    alias clip='pbcopy'
    export PATH="/usr/local/opt/python@3.8/bin:$HOME/Developer/scripts:/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home/bin:/Users/$(whoami)/Developer/flutter/bin:/usr/local/Cellar/openvpn/2.4.7_1/sbin:$PATH"
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_231.jdk/Contents/Home/
    export NVM_HOME=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
elif [[ "$OSTYPE" == "linux-gnu" ]]; then
    alias paste='xclip -o'
    alias clip='xclip -i'
fi

alias p8='ping 8.8.8.8'
alias ack="ag --pager='less -r'"
alias ipython='ipython --TerminalInteractiveShell.editing_mode=vi'

if [[ -s ~/Developer/configFiles/exportCreds.sh ]]; then 
    source ~/Developer/configFiles/exportCreds.sh
fi

if [[ -s ~/Developer/configFiles/local-docker-vars.sh ]]; then
    source ~/Developer/configFiles/local-docker-vars.sh
fi


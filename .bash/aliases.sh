# bash aliases

alias ll='ls -al'
alias ls='ls --color=auto'
alias l='ls -lh'
alias la='ls -a'
alias sl='ls'
alias suod='sudo'
alias gti='git'
alias igt='git'
alias reload='source ~/.bashrc'
alias a='vim ~/.bash/aliases_private.sh'
alias r='source ~/.bashrc'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias rmr='rm -r'

alias v='vim'
alias p='python'
alias e='evince'
alias n='newsboat -r'
alias news='newsboat'
alias feh='feh -FZ'

# safety features
alias cp='cp -i'
alias mv='mv -i'

# for carriage return problems between unix and dos
# things like ^M$ instead of $
alias dos2unix="perl -pi -e 's/\r\n/\n/g'"

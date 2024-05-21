#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment variables
export TERMINAL="urxvt"
export EDITOR="vim"
export PATH="${PATH}:$HOME/bin"

# pipx
export PATH="${PATH}:$HOME/.local/bin"

# Tab completion
complete -cf sudo
complete -cf man
complete -cf pidof 
complete -cf killall 

# Unlimited history
HISTSIZE=
HISTFILESIZE=

# Load other stuff including prompt and aliases
for f in ~/.bash/*.sh; do
  source "$f"
done

# Bash-it config
export BASH_IT=`echo ~/.bash_it`
export BASH_IT_THEME='custom'
unset MAILCHECK
export SCM_CHECK=true
source $BASH_IT/bash_it.sh

# React Native
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Set up Node Version Manager
source /usr/share/nvm/init-nvm.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

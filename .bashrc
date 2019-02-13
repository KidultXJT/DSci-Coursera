# .bashrc
### Source global definitions

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User History Size
HISTSIZE=5000
HISTFILESIZE=5000

### Enviornment Setting
# ReportFactory
#export PATH=$HOME/bin:$HOME/software/vim/build/bin:$PATH
## LANGUAGE
export LANG=en_US.utf8
export LANGUAGE=en_US:en

### User specific aliases and functions
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias l='ls -lrth'
alias l.='ls -d .* --color=auto'
alias lh='ls -ltrh'
alias ll='ls -l --color=auto'
alias la='ls -l -a --color=auto'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias c='clear'
alias le='less -mSN'
alias psc='ps xf | cat'
alias ts='top -u xiejunting'
alias hisg='history | grep'
alias gitacp='git add * && git commit -m "`date`" && git push'
alias du='du -h --max-depth=1'
alias sd="l | grep xiejunting | awk '{print \$9}' | xargs du -h --max-depth=0"

alias cdd='cd ~/Documents'
alias go224='ssh xiejunting@192.168.1.224'
alias go222='ssh xiejunting@192.168.1.222'
alias go233='ssh shiny@192.168.1.233'

## ------------------------------------ Shell theme ------------------------------------ ##
GREEN="\[\e[32;1m\]"
BLUE="\[\e[36;1m\]"
WHITE="\[\e[37;1m\]"
BLACK="\[\e[30;1m\]"
RED="\[\e[31;1m\]"
YELLOW="\[\e[33;1m\]"
PURPLE="\[\e[35;1m\]"
DARK_GREEN="\[\e[36;1m\]"
CLEAR="\[\e[0m\]"
_JOB_="\j"
_FILECOUNT_="Files: \$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g')"
_FACE_="\`if [ \$? = 0 ]; then echo \[\e[1\;35m\]^_^\[\e[0m\]; else echo \[\e[1\;31m\]\>_\<\[\e[0m\]; fi\`"
_HISTORY_="\!"
_DATE_="\$(/bin/date)"
_CLOCK_="\t"
_SIZE_="Size: \$(/bin/ls -lah | /usr/bin/head -n 1 | /usr/bin/cut -d ' ' -f 2)"
_PATH_="\$(pwd)"
_GIT_BASH_="\$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')"
#_GIT_="\$(__git_ps1 \"(%s)\")"

export PS1="$RED\u$BLUE@$YELLOW\h $PURPLE$_JOB_ ---- $GREEN$_PATH_ $RED$_GIT_BASH \n$WHITE\d \A ${BLUE}\\$>>..=w=..^w^..Kidult..>>>> $CLEAR"

### Git config
[[ -f ~/.git-completion.bash ]] && . ~/.git-completion.bash
[[ -f ~/.git-prompt.bash ]] && . ~/.git-prompt.bash && export GIT_PS1_SHOWDIRTYSTATE=1

# MetaGenome
#alias wormhole='python /Bio/User/yinsijun/bin/http.py'

# added by Miniconda3 installer
#alias lastinfo="cat .nextflow.log | grep -Eo 'INFO.*' | sed 's/INFO\s*//' | sed 's/nextflow.Session -//g'"


export CXX=g++ CC=gcc
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/anaconda3/lib"

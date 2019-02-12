# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

if [ $(id -u) -eq 0 ]; then
  u="\[\033[1;31m\]\u"
  m="\[\033[1;31m\] # "
else
  u="\[\033[1;32m\]\u"
  m="\[\033[1;32m\] $ "
fi
ip=$(ip a show eth0 | grep -oP '(?<=inet )[^/]+')
export PS1=\
"\[$(tput sgr0)\]\[\033[1;37m\]["\
"\[$(tput sgr0)\]$u"\
"\[$(tput sgr0)\]\[\033[1;37m\]@"\
"\[$(tput sgr0)\]\[\033[1;33m\]$ip"\
"\[$(tput sgr0)\]\[\033[1;37m\] \w]"\
"\[$(tput sgr0)\]$m"\
"\[$(tput sgr0)\]"


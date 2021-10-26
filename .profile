# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
  # include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/go" ]; then
  export GOPATH="$HOME/go"
  export PATH="$HOME/go/bin:$PATH"
fi

# Interactive only
if [ -t "0" ]; then
  if [ -f "$HOME/.secrets" ]; then
    source $HOME/.secrets
  fi
fi

# Locale
export LC_ALL="en_GB.UTF-8"

# Allow use of C-s
stty -ixon

# Personal
export EMAIL="mischamolhoek@gmail.com"
export NAME="Mischa Molhoek"
export SMTPSERVER="smtp.gmail.com"

export MANPAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man nomod nolist nonu noma' -\""

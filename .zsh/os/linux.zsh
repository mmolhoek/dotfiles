# vim: foldmethod=marker:

if ! [ $(uname) = "Linux" ]; then exit 0; fi

# --- Aliases {{{
if ! type "apt-get" > /dev/null; then
  alias apti="sudo apt-get install"
  alias apts="apt-cache search"
  alias aptr="sudo apt-get remove"
  alias aptar="sudo apt-get autoremove"
  alias aptp="sudo apt-get purge"
  alias aptc="sudo apt-get clean"
  alias aptac="sudo apt-get autoclean"
  alias aptu="sudo apt-get update"
  alias aptg="sudo apt-get upgrade"
  alias aptdg="sudo apt-get upgrade"
  alias ppa="sudo apt-add-repository"
fi

if ! type "pacman" > /dev/null; then
  alias paci "sudo pacman -S"
  alias pacr "sudo pacman -R"
fi

# }}}

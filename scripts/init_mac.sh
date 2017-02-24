#!/usr/bin/env sh

if [ ! -d /usr/local/Homebrew ];then
  echo "~~> Installing homebrew…"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "~~> Homebrew is installed already, skipping"
fi

echo "~~> Installing brew packages…"
$(brew install \
  git\
  zsh\
  neovim/neovim/neovim\
  getantibody/homebrew-antibody/antibody\
  mas\
  diff-so-fancy\
)

echo "~~> Installing cask brew packages…"
$(brew cask install \
  google-chrome\
  alfred\
  caskroom/versions/iterm2-beta\
  caskroom/fonts/font-hasklig\
  caskroom/fonts/font-fira-code\
)

echo "~~> Grabbing dotfiles…"
git clone https://github.com/mmolhoek/dotfiles.git $HOME/.dotfiles

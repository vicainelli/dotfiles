#!/bin/sh

install_dependencies() {
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  brew install git
  brew install wget

  wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  mv git-completion.bash ~/.git-completion.bash

  wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
  mv git-prompt.sh ~/.git-prompt.sh
}


set_git_configurations() {
  echo "\nInput your Git username:"
  read git_config_user_name
  git config --global user.name "$git_config_user_name"

  echo "\nInput your Git e-mail:"
  read git_config_user_email
  git config --global user.email $git_config_user_email
}
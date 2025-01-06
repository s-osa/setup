#!/bin/zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install ansible
SETUP_DIR=$HOME/src/github.com/s-osa/setup
git clone https://github.com/s-osa/setup.git $SETUP_DIR
cd $SETUP_DIR
ansible-playbook playbook.yml

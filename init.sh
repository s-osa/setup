#!/bin/zsh
brew install ansible
SETUP_DIR=$HOME/src/github.com/s-osa/setup
git clone https://github.com/s-osa/setup.git $SETUP_DIR
cd $SETUP_DIR
ansible-playbook playbook.yml

#!/bin/zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# echo >> $HOME/.zprofile
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install ansible
SETUP_DIR=$HOME/src/github.com/s-osa/setup
git clone https://github.com/s-osa/setup.git $SETUP_DIR
cd $SETUP_DIR
ansible-playbook playbook.yml
# ansible-playbook -i localhost /dev/stdin << "$(curl -s https://raw.githubusercontent.com/s-osa/setup/refs/heads/master/playbook-dotfiles.yml)"

#!/bin/zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew install ansible
ansible-playbook /dev/stdin << "$(curl -s https://raw.githubusercontent.com/s-osa/setup/refs/heads/master/playbook-dotfiles.yml)"

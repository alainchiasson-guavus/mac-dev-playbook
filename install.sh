#!/bin/bash

# Usage:
# install.sh accout@apple.com password

# From geerlingguy - prep instructions for install
#
# See... https://github.com/geerlingguy/mac-dev-playbook
#
# xcode-select --install
# install ansible
# clone this repo
# ansible-galaxy install requirements
# ansible-plybook ...
# Account password (apple itunes?)  when prompted.
#
# The following is from : https://github.com/JulianBour/mac-dev-playbook
#
# But I don't like the "hardcoding". I would like to generalise, and use a
# seperate repo (private) for the environment config (similar to the dotfiles)
#
if [[ -z $(which brew) ]]; then
  echo "Installing Homebrew...";
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi

if [[ -z $(which ansible) ]]; then
    echo "Installing Ansible";
    brew install ansible
fi

WHOAMI=$(whoami);

if [[ -d "/Users/${WHOAMI}/Documents/dotfiles" ]]; then
    echo "Removing dotfiles";
    rm -rf "/Users/${WHOAMI}/Documents/dotfiles" > /dev/null;
fi
if [[ -d "/Users/${WHOAMI}/.setup" ]]; then
    echo "Removing playbook";
    rm -rf "/Users/${WHOAMI}/.setup" > /dev/null;
fi

git clone https://github.com/alainchiasson-guavus/mac-dev-playbook.git "/Users/${WHOAMI}/.setup" > /dev/null;
git clone https://github.com/alainchiasson-guavus/dotfiles.git "/Users/${WHOAMI}/Documents/dotfiles" > /dev/null;

cd "/Users/${WHOAMI}/.setup/";

echo "Installing requirements";
ansible-galaxy install -r ./requirements.yml;

echo "Initiating playbook";

ansible-playbook ./main.yml -i inventory -U $(whoami) --ask-become-pass;
#sudo ansible-playbook ./main.yml -i inventory;

echo "Done.";

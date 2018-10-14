# Mac Development Ansible Playbook

This playbook installs and configures most of the software I use on my Mac for web and software development.

This playbook will be updated throughout my life with various features, functions and roles - but they will always convey the same purpose.

## Installation

  Run the following from the command line, and enter your administrative password when requested.

  Note that initially you'll need to install xcode command line tools before you can proceed.

  1. `xcode-select --install`

  2. `chown root:admin /usr/local/`

  3. `chmod 775 /usr/local`

  4. `curl https://raw.githubusercontent.com/alainchiasson-guavus/mac-dev-playbook/master/install.sh | bash`

## Included Applications / Configuration

### Applications (installed with Homebrew Cask):

  - adobe-creative-cloud
  - ccleaner
  - cheatsheet
  - dash
  - dropbox
  - filezilla
  - firefoxdeveloperedition
  - google-chrome
  - google-drive
  - google-hangouts
  - iterm2
  - jetbrains-toolbox
  - kodi
  - launchbar
  - slack
  - steam
  - sublime-text
  - teamviewer
  - virtualbox
  - vlc

### Packages (installed with Homebrew):

  - ansible
  - awscli
  - composer
  - dockutil
  - git
  - go
  - gpg
  - openssl
  - python
  - sqlite
  - mcrypt
  - modman
  - n98-magerun
  - n98-magerun2
  - npm
  - nvm
  - ssh-copy-id
  - openssl
  - wget

### Apple Store Products

  - Dont't Sleep
  - Lastpass
  - Microsoft Remote Desktop

# Dotfiles

My [dotfiles](https://github.com/tschifftner/dotfiles) are also installed into the current user's home directory.

## Ansible for DevOps

Check out [Ansible for DevOps](http://www.ansiblefordevops.com/), which will teach you how to do some other amazing things with Ansible.

## Special thanks

- [Karl Hepworth](https://github.com/fubarhouse) for a great playbook I was able to fork.
- [Jeff Geerling](http://jeffgeerling.com/) for creating the amazing [mac-dev-playbook](https://github.com/geerlingguy/mac-dev-playbook).

## Authors/Contributors

[Karl Hepworth](http://twitter.com/fubarhouse), Making this fork more personalized.

[Jeff Geerling](http://jeffgeerling.com/), 2014 (originally inspired by [MWGriffin/ansible-playbooks](https://github.com/MWGriffin/ansible-playbooks)).

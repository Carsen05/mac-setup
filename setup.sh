#!/bin/sh

# check if Homebrew is installed
which -s brew
# if not,
[[ $? != 0 ]] && {
  # install it
  echo 'Installing Homebrew...'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo 'Updating Homebrew...'
  brew update
}

# check if git is installed in /usr/local
if [[ -e /usr/local/bin/git ]]; then
  echo 'Re-linking git to fix any broken symlinks...'
  # relink to fix any broken symlinks
  brew unlink git
  brew link git
# check if git is installed, but not linked
elif [[-d /usr/local/Cellar/git ]]; then 
  echo 'Git is already installed. Linking git...'
  brew link git
# otherwise install git
else
  echo 'Installing git...'
  brew install git
fi

# check if python3 is installed in /usr/local
if [[ -e /usr/local/bin/python3 ]]; then
  echo 'Re-linking python3 to fix any broken symlinks...'
  # relink to fix any broken symlinks
  brew unlink python3
  brew link python3
# check if git is installed, but not linked
elif [[-d /usr/local/Cellar/python3 ]]; then 
  echo 'python3 is already installed. Linking python3...'
  brew link python3
# otherwise install python3
else
  echo 'Installing python3...'
  brew install python3
fi

# check if node is installed in /usr/local
if [[ -e /usr/local/bin/node ]]; then
  echo 'Re-linking node to fix any broken symlinks...'
  # relink to fix any broken symlinks
  brew unlink node
  brew link node
# check if git is installed, but not linked
elif [[-d /usr/local/Cellar/node ]]; then 
  echo 'Node is already installed. Linking node...'
  brew link node
# otherwise install node
else
  echo 'Installing node...'
  brew install node
fi

# check if npm is installed in /usr/local
if [[ -e /usr/local/bin/surge ]]; then
  echo 'Surge is already installed...'
else
  echo 'Installing Surge...'
  npm install --global surge
fi
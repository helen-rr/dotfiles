#!/bin/sh

zshrc() {
    echo "==========================================================="
    echo "             cloning zsh-autosuggestions                   "
    echo "-----------------------------------------------------------"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    echo "==========================================================="
    echo "                  Import zshrc                             "
    echo "-----------------------------------------------------------"
    cat .zshrc > $HOME/.zshrc
}

zshrc


if [ "$CODESPACES" = "true" ]; then
  echo "source /workspaces/.codespaces/.persistedshare/dotfiles/rc" >> $HOME/.zshrc
  sudo chsh -s /usr/bin/zsh
fi

# after any changes remember to mark this install script as executable with git
# run
#   git add install.sh --chmod=+x
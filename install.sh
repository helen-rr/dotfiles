#!/bin/sh

zshrc() {
    echo "==========================================================="
    echo "                  Import zshrc                             "
    echo "-----------------------------------------------------------"
    cat .zshrc > $HOME/.zshrc
}

zshrc

# after any changes remember to mark this install script as executable with git
# run
#   git add install.sh --chmod=+x
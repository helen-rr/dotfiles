export USERNAME=`whoami`

zshrc() {
    echo "==========================================================="
    echo "             cloning zsh-syntax-highlighting                  "
    echo "-----------------------------------------------------------"
    git clone https://github.com/zsh-syntax-highlighting.git ${HOME}/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    echo "==========================================================="
    echo "             cloning zsh-autosuggestions                   "
    echo "-----------------------------------------------------------"
    git clone https://github.com/zsh-users/zsh-autosuggestions ${HOME}/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    echo "==========================================================="
    echo "                  Import zshrc                             "
    echo "-----------------------------------------------------------"
    cp -f ~/dotfiles/.zshrc ${HOME}/.zshrc
    chsh -s /usr/bin/zsh $USERNAME
}


roserocket() {
    echo "==========================================================="
    echo "                 copying config files                      "
    echo "-----------------------------------------------------------"
    gh codespace cp ./.env remote:/workspaces/roserocket
    gh codespace cp ./backup_*.sql remote:/workspaces/roserocket
    gh codespace cp ./docker-compose.personal.yaml remote:/workspaces/roserocket
    gh codespace cp ./service/auth/air.conf remote:/workspaces/roserocket/service/auth
    gh codespace cp ./service/auth/config.yml remote:/workspaces/roserocket/service/auth
    gh codespace cp ./service/api/air.conf remote:/workspaces/roserocket/service/api
    gh codespace cp ./service/api/config.yml remote:/workspaces/roserocket/service/api
    gh codespace cp ./service/api/config.ff.yml remote:/workspaces/roserocket/service/api
    gh codespace cp ./service/platform/air.conf remote:/workspaces/roserocket/service/platform
    gh codespace cp ./service/platform/config.yml remote:/workspaces/roserocket/service/platform
    gh codespace cp ./service/platform/config.ff.yml remote:/workspaces/roserocket/service/platform
    gh codespace cp ./service/mobile/air.conf remote:/workspaces/roserocket/service/mobile
    gh codespace cp ./service/mobile/config.yml remote:/workspaces/roserocket/service/mobile
    gh codespace cp ./service/mobile/config.ff.yml remote:/workspaces/roserocket/service/mobile
    gh codespace cp ./cron/config.yml remote:/workspaces/roserocket/cron
    gh codespace cp ./ui/src/scripts/env.js remote:/workspaces/roserocket/ui/src/scripts
}

zshrc

roserocket

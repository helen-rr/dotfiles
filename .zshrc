# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export GITHUB_USER="helen-rr"
# export GITHUB_TOKEN="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" #MacBookPro token
export GITHUB_TOKEN="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" #Codespaces
# export GITHUB_TOKEN=
export GOPRIVATE="github.com/RoseRocket"
export GOPATH="${HOME}/go"
export PATH="/usr/local/go/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="false"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# nagivation
alias rr="cd ${HOME}/roserocket"

# docker
alias dps="docker-compose ps"
alias up="docker-compose -f docker-compose.personal.yaml up -d"
alias dn="docker-compose -f docker-compose.personal.yaml stop"
alias apilog="docker logs roserocket_api_1 --tail 100"
alias uilog="docker logs roserocket_ui_1 --tail 100"
alias docslog="docker logs roserocket_docs_1 --tail 100"

# containers
alias mud="make up-dev"
alias mrall="make reload-all"
alias mrapi="make reload-api"
alias mrplat="make reload-plat"
alias mrmob="make reload-mob"
alias mrui="make reload-ui"

# migrations
alias mgs="make goose-status"
alias mgu="make goose-up"
alias mgd="make goose-down"
alias mgdt="make goose-down-to"
alias mgc="make goose-create"

# mutagen
alias msl="mutagen sync list"
alias cleanenv="mutagen sync list && mutagen sync terminate -a && mutagen sync list"

# git
alias gaa="git add -A"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcd="git checkout develop"
alias gcm="git checkout main"
alias gfo="git fetch origin"
alias gcam="git commit -a -m"
alias gmsg="git commit -m"
alias ggl="git pull origin"
alias ggld="git pull origin develop"
alias gglm="git pull origin main"
alias ggp="git push origin HEAD"
alias ggpf="git push -f origin HEAD"
alias gsh="git stash"
alias gsp="git stash pop"
alias grd="git rebase develop"
alias grm="git rebase main"
alias gri="git rebase -i"
alias gcp="git cherry-pick"
alias glog="git log --oneline --decorate"
alias gst="git status"

# cypress
alias cyup="cd ${HOME}/roserocket/ui; npm run cy:open"

# payments microservice
alias pt="cd ${HOME}/payments-balance"
alias ptbuild="pt;docker-compose build --build-arg GITHUB_USER=${GITHUB_USER}"
alias ptup="pt;mutagen-compose up -d"
alias ptdown="pt;mutagen-compose down --remove-orphans"
alias ptreload="pt;make reload"
alias ptlogs="pt;docker-compose logs -f roserocket-payments-balance"

# terms microservice
alias tm="cd ${HOME}/terms"
alias tmup="tm;docker-compose build --build-arg GITHUB_USER=${GITHUB_USER} --build-arg GITHUB_TOKEN=${GITHUB_TOKEN}; docker-compose up"

# connector routing service microservice
alias crs="cd ${HOME}/connector-routing-service"
alias crsbuild="crs;docker-compose build --build-arg GITHUB_USER=${GITHUB_USER}"
alias crsup="crs;mutagen-compose up -d"
alias crsdown="crs;mutagen-compose down --remove-orphans"
alias crsreload="crs;make reload"
alias crslogs="crs;docker-compose logs -f roserocket-connector-routing-service"
alias crsrs="crsdown && crsbuild && crsup"

# dynamo db cli
alias dyup="DYNAMO_ENDPOINT=http://localhost:8000 dynamodb-admin"

# Prompt settings
DEFAULT_USER=$USER
prompt_dir() {
  prompt_segment blue black "%c"
}
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Path to your oh-my-zsh installation.
export ZSH=/Users/patriciolopez/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="smt"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd.mm.yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git atom bower brew brew-cask bundler django docker encode64 gem git git-extras github go golang gradle grunt heroku mvn meteor nmap node npm osx pip postgres pyenv python rails rake rbenv ruby scala sublime sudo xcode z)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nano'
else
  export EDITOR='subl'
fi


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias lauchmongo="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist"
alias desk="cd /Users/patriciolopez/Desktop"

# Paths
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH="/usr/local/sbin:$PATH"

# Zsh complete
# https://github.com/zsh-users/zsh-completions
# fpath=(/usr/local/share/zsh-completions $fpath)
# alias autocomplete="rm -f ~/.zcompdump; compinit"
plugins+=(zsh-completions)
autoload -U compinit && compinit

# iTerm2
bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word

# Mono
# https://github.com/aspnet/Home
source dnvm.sh

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# VSCode
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Node Version Manager
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm use iojs

# z
. `brew --prefix`/etc/profile.d/z.sh

# jenv
# http://hanxue-it.blogspot.cl/2014/05/installing-java-8-managing-multiple.html
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

# Android
export ANDROID_HOME=/usr/local/opt/android-sdk

# Haxe
export HAXE_STD_PATH="/usr/local/lib/haxe/std"

# MacTex
eval `/usr/libexec/path_helper -s`

# Update
alias update_brew="brew update; brew cask update; brew upgrade; brew cleanup; brew cask cleanup"
alias update_python="pip3 install --upgrade pip; pip install --upgrade pip; pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U; pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U; rm -rf ~/Library/Caches/pip"
alias update_npm="npm update -g"
alias update_atom="apm update --no-confirm"
alias update_all="update_brew; update_python; update_npm; update_atom"

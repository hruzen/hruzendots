export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
#export XDG_RUNTIME_DIR=/run/user/1000 
#export XDG_RUNTIME_DIR="/run/user/1000"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Save the location of the current completion dump file.
if [ -z "$ZSH_COMPDUMP" ]; then
  ZSH_COMPDUMP="${ZDOTDIR:-${ZSH}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
fi

zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$Path

export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GNUPGHOME="$XDG_DATA_HOME"/gnupg 
export ZSH="$XDG_DATA_HOME"/oh-my-zsh
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export HISTFILE="$XDG_STATE_HOME"/zsh/history
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority


# Path to your oh-my-zsh installation.
#export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_CONFIG_FILE=~/.config/zsh/p10k.zsh
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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
plugins=(git sudo history encode64 copypath zsh-autosuggestions zsh-syntax-highlighting)

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

#  ┌─┐┬  ┬┌─┐┌─┐
#  ├─┤│  │├─┤└─┐
#  ┴ ┴┴─┘┴┴ ┴└─┘

#---System Commands---#

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias vm-on="sudo systemctl start libvirtd.service"
alias vm-off="sudo systemctl stop libvirtd.service"
alias screenrate="screenrate.sh"

#---Helpful aliases---#

alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias l='eza -lhD --icons=auto' # long list dirs

#---quick commands---#

alias mirrors="sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist"
alias up='sudo pacman -Syu' # update system/package/aur
alias un='sudo pacman -Rns' # uninstall package
alias alist='pacman -Qe'
alias dlist='pacman -Qd'
alias words='wc -l'
alias link='ln -s'

#---App commands---#

alias vc='code --disable-gpu' # gui code editor
alias matrix='unimatrix -s 96'
alias vim='nvim'
alias vi='nvim'
alias yt='ytfzf'
alias ytp='youtube-viewer -n --no-video-info --player=mpvt'
alias editconf='cd ~/Documents/.gitrepos/hruzendots/ && nvim'

#---Git commands---#

#---Obsidian MDs---#
alias pullobs='cd ~/Documents/.gitrepos/obsidian/ && git pull'
alias gitobs='cd ~/Documents/.gitrepos/obsidian/ && git add . && git commit -m "update" && git remote add origin git@github.com:hruzen/obsidian.git'

#---My Dots---#
alias pulldots='cd ~/Documents/.gitrepos/hruzendots/ && git pull'
alias gitdots='cd ~/Documents/.gitrepos/hruzendots/ && git add . && git commit -m "update" && git remote add origin git@github.com:hruzen/hruzendots.git'

#---Push shortcut---#
alias gp='git push -u origin main'
alias gcm='git commit -m "update"'
alias ga='git add .'
#---Script-files---#

alias cac='clearallcache.sh'
alias wcam='webcam.sh'
alias dwall='dynamicwall.sh'
alias spotcat='spotifycat.sh'
alias spotliath='spotifyliath.sh'
alias lbattery='limitd.sh'
alias glaunch='gamelauncher.sh'
alias pipes='mypipes.sh'
alias logwall='logwall.sh'
alias mp='ncmpcpp'
alias dlaudio='dlaudio.sh'

#---location---#

alias mygit='cd ~/Documents/.gitrepos/'
alias home='cd ~/'
alias doc='cd ~/Documents/'
alias dl='cd ~/Downloads/'

#---quick-edit---#

alias wmrc='nvim ~/.config/bspwm/bspwmrc'
alias keys='nvim ~/.config/sxhkd/sxhkdrc'
alias zshrc='nvim .zshrc'

export PATH=$PATH:/home/hruzen/Documents/.scripts
#neofetch
pfetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/p10k.zsh.
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh

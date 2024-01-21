#neofetch
pfetch

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Save the location of the current completion dump file.

zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache

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

alias pacbak='sudo pacman -Qqen > packages.txt'
alias aurbak='sudo pacman -Qqem > aurpackages.txt'

#---App commands---#

alias vc='code --disable-gpu' # gui code editor
alias matrix='unimatrix -s 96'
alias vim='nvim'
alias svim='sudoedit'
alias vi='nvim'
alias yt='ytfzf'
alias ytp='youtube-viewer -n --no-video-info --player=mpvt'
alias editconf='cd ~/Documents/.gitrepos/hruzendots/ && nvim'
alias sf='fzf'

alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'

alias yarn='yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config'

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
alias zshrc='nvim ~/Documents/.gitrepos/hruzendots/.zshrc'
alias zshenv='nvim ~/Documents/.gitrepos/hruzendots/.zshenv'

#---Python---#

alias activepy='source venv/bin/activate'
alias leavepy='deactivate'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/p10k.zsh.
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh

source /home/hruzen/.config/broot/launcher/bash/br

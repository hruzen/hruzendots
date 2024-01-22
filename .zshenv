if [ -z "$ZSH_COMPDUMP" ]; then
  ZSH_COMPDUMP="${ZDOTDIR:-${ZSH}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
fi

export VISUAL="${EDITOR}"
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'

export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
#export XDG_RUNTIME_DIR=$PATH:~/.cache/xdgr
#export XDG_RUNTIME_DIR=/run/user/1000

export ZDOTDIR="$HOME"/.config/zsh
export PATH=$PATH:/home/hruzen/Documents/.gitrepos/hruzendots/.scripts

export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
export VSCODE_PORTABLE="$XDG_DATA_HOME"/vscode
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
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

#export PF_INFO="ascii title os kernel wm shell editor memory palette"
export PF_INFO="title os kernel wm shell editor memory palette"

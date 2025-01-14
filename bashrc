# Sample .bashrc for SUSE Linux
# Copyright (c) SUSE Software Solutions Germany GmbH

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

test -s ~/.alias && . ~/.alias || true


alias grep='grep --color=auto'
alias ll='eza -l'
alias la='eza -al --color=auto'
alias ls='eza -a --grid --icons --color=auto'
alias vim='nvim'
alias on='startx'
alias a="asciiquarium"
alias m="cmatrix -ab"
alias me="xrandr --output eDP --off --output HDMI-A-0 --auto --primary"
alias me1="xrandr --output eDP --off"
alias me2="xrandr --output HDMI-A-0 --auto --primary"
alias h="Hyprland"

alias venvon="source ~/Documents/JKU/.venv/bin/activate"


#PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

# default application
export EDITOR=nvim
export VISUAL=nvim
export TERMINAL=kitty
export TERM=kitty

# dbus
#export MOZ_DBUS_REMOTE=1
#export GTK_IM_MODULE=ibus

# darktheme
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=Adwaita-Dark


# cuda 
export PATH=/usr/local/cuda-12.6/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-12.6/lib64\
                         ${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/hartmut/Programms/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/hartmut/Programms/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/hartmut/Programms/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/hartmut/Programms/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

. "$HOME/.cargo/env"

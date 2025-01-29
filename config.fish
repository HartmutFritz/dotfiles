if status is-interactive
    # Commands to run in interactive sessions can go here
    # to search my history
    # atuin init fish | source
end

#fish_vi_key_bindings

set -gx EDITOR nvim
set -x VISUAL nvim
set -gx BROWSER firefox
set -x TERMINAL kitty
set -g fish_greeting ''

starship init fish | source

# apps
alias vim="nvim"
alias v="nvim"
alias f="fzf --reverse"
alias m="cmatrix -ab"
alias spt="ncspot"
alias o="cd && y"
alias yast="sudo -E yast2"
alias bc="qalc"
alias pm="pulsemixer"
alias timer="/home/hartmut/repos/term-timer/timer.py"
alias wetter="curl wttr.in/vienna"

# ls
alias ls="eza -a --grid --icons --color=auto"
#alias ls="eza -al --icons --color=auto"
#alias ls="lsd -a"
alias ll="eza --grid --icons --color=auto" # list less
alias la="eza -al --color=auto"            # list all


# goto
alias gj="cd ~/Documents/Uni/ && y"
alias ga="cd ~/Documents/Uni/Thesis/repos/Spatial-LSTM && y"
alias gu="cd ~/Documents/Uni/ && ls"
alias gp="cd ~/Documents/Personal_Stuff/ && y"
alias gdn="cd ~/Documents/Personal_Stuff/DnD/Kilwin && y"
alias gw="cd ~/Documents/Work/ && y"
alias gdo="cd ~/Documents && y"
alias gc="cd ~/repos/dotfiles && ls"
alias gco="cd ~/.config && ls"
alias gn="cd ~/Documents/Personal_Stuff/Notes && y"
alias gpr="cd ~/Documents/Projects && y"
alias gb="cd ~/Documents/Personal_Stuff/Bilder && y"
alias gt="cd ~/Documents/Personal_Stuff/Tickets_and_Travel && y"
alias gs="cd /home/hartmut/Documents/Personal_Stuff/Bilder/Screenshots && y"
alias gw="cd ~/Documents/Work && y"
alias gd="cd ~/Downloads/ && y"
alias gh="cd ~ && ls"
alias gr="cd ~/repos && y"
alias gm="cd ~/Media/ && y"
alias gse="cd /home/hartmut/Media/Serien && y"
alias gmo="cd /home/hartmut/Media/Movies && y"
alias gt="cd /home/hartmut/.local/share/Trash/files && ls"

# power
alias s='systemctl suspend'

alias p60='sudo shutdown -P +60'
alias p45='sudo shutdown -P +45'
alias p30='sudo shutdown -P +30'
alias p15='sudo shutdown -P +15'

# zypper
alias uin="sudo zypper rm -u"
alias innr="sudo zypper in --no-recommends"

# bluetooth
alias bon="sudo systemctl start bluetooth && bluetoothctl power on"
alias boff="sudo systemctl stop bluetooth"

#gammastep
alias gon="systemctl --user start gammastep.service"
alias goff="pkill gammastep"

# monitor
#alias ml="xrandr --output eDP --auto --primary --output HDMI-A-0 --off"
#alias me="xrandr --output eDP --off --output HDMI-A-0 --auto --primary"
alias me='hyprctl keyword monitor "HDMI-A-1, 1920x1080, 0x0, 1" && hyprctl keyword monitor "eDP-1, disable" && swww img /home/hartmut/repos/wallpaper/0.png'
alias ml='hyprctl keyword monitor "eDP-1, 1920x1200, 0x0, 1" && hyprctl keyword monitor "HDMI-A-1, disable"'

# remove loopback devices (snap)
alias lsblk="lsblk -e7"
alias df="df -h | grep -v ^/dev/loop"

# du
alias dua='du -hs *'
alias duh='du -hs .*'

# wifi
alias wifils='nmcli device wifi list'
alias wifiipad="sudo nmcli device wifi connect iPad"
alias wifihandy="sudo nmcli device wifi connect Pixel\ 9"

# other
alias clip="wl-copy"
alias c-="cd - && ls"
alias ..="cd .. && ls"
alias ...="cd .. && cd .. && ls"
alias ....="cd .. && cd .. && cd .. && ls"
alias gitu="git add -A && git commit -m "_" && git push"
alias gitunh="git add * && git commit -m "_" && git push"
alias ipadress="curl ifconfig.me"

alias cl="clear"
alias c="cd && clear"

alias con="source ~/Programms/miniconda3/etc/fish/conf.d/conda.fish"
alias coff="conda deactivate && conda deactivate && conda deactivate"
alias cjku="con && conda activate jku"


# YAZI
function y
	set tmp (mktemp -t "yazi-cwd.XXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
    and ls
end

# POWEROFF
function po
    #echo 'POWEROFF'
    killall obsidian
    killall spotify
    killall vivaldi
    killall morgen
    echo 'WARNING!!!'
    echo 'This computer will SELF-DESTRUCT in'
    sleep 1
    echo '3'
    sleep 1
    echo '2'
    sleep 1
    echo '1'
    sleep 1
    cat /usr/bin/pamsumm
    sleep 1
    sudo poweroff
end

# POWEROFF
function p
    echo 'POWEROFF'
    killall obsidian
    killall spotify
    killall vivaldi
    killall morgen
    sleep 3
    sudo poweroff
end

# REBOOT
function r
    echo 'REBOOT'
    killall obsidian
    killall spotify
    killall vivaldi
    killall morgen
    sleep 3
    sudo reboot
end

# SYU
function syuvc
    sudo zypper ref
    sudo zypper dup --allow-vendor-change
    sudo flatpak update -y
    sudo snap refresh # there is no -y flag
end

function syu
    sudo zypper ref
    sudo zypper dup
    sudo flatpak update -y
    sudo snap refresh # there is no -y flag
end

function wbr
    killall waybar
    waybar & disown
end

function hs
    history | fzf | clip
end

function l
    swaylock -i /home/hartmut/repos/wallpaper/dark_street.jpg &
    systemctl suspend
end


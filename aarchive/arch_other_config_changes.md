
## /etc/pacman.conf
--------------------------------

Color

## /etc/paru.conf
--------------------------------

BottomUp

## /etc/makepkg.conf
--------------------------------

MAKEFLAGS="-j17"  # number of threads of the cpu + 1

## firefox
--------------------------------

Sun Knudsen firefox config
uBlock
Privacy Badger
I still don't care about cookies
Dark Reader
Vimium C
Backspace for 'return to previos side'
media.hardware-video-decoding.force-enabled = true # about:config
media.navigator.mediadatadecoder_vp8_hardware_enabled = true

## VSCode
--------------------------------


### Change CapsLock key with Esc key

- Disable Systemwide capslock change (via command from .xinitrc)
- Map extention.vim_escape to original caps lock key (enter command on vscode: keyboard shortcuts)
- enable systemwide change again
- do the same with 'Notebook: Stop Editing Cell'  (Source=vim)

suche open user settings (ohne json)
dann cursor style
und dann blinken auf solid und insert cursor auf block

ctrl+,  then: files.exclude
**/.venv/

## sudo
--------------------------------

sudoers.d mit NOPASSWS


## Joplin
--------------------------------

In userchrome.css:
.CodeMirror-cursor {
    visibility: visible !important;
    animation: none !important;
}

focus note list: ctrl + page_up
back: ctrl + tab
forward: ctrl + shift + tab

vimrc (joplin plugin)
nnoremap j gj
nnoremap k gk

unmap C-c  (das C-c gehört in spitze Klammern, nur Joplin tut etwas komisches wenn ich das so schreibe ...)
unmap C-v  (ebenfalls in < ... >)

## Todoist Snap Package
--------------------------------
edit the Preferences file in
/home/hartmut/snap/todoist/1291/.config/Todoist
change ["en-US"] to ["en-US","de-DE"]

## deactivate bell
--------------------------------

sudo vim /etc/modprobe.d/nobeep.conf  ## create file if needed
blacklist pcspkr  ## put this into the file

## Akkuschonmodus
--------------------------------

echo 75 | sudo tee /sys/class/power_supply/BAT0/charge_controll_start_threshold
echo 80 | sudo tee /sys/class/power_supply/BAT0/charge_controll_end_threshold

## Rofi
--------------------------------
styles found on: https://github.com/adi1090x/rofi?tab=readme-ov-file
change to style X:
~/.config/rofi/launchers/type-X/launcher.sh
theme='style-X'

## Yazi
--------------------------------
- download 3 config files from github
- fzf plugin
- Zoxide plugin
in the first init.lua:
require("fzf")
require("zoxide")
-> the rest like described in the documentation


## Fischer and omf
--------------------------------
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish

## Directories
--------------------------------
I created the .local folder and addet it to my path

## ipython shell
--------------------------------
In ~/.ipython/profile_default/ipython_config.py
put c.TerminalInteractiveShell.editing_mode = "vi"

## Obsidian
--------------------------------
ctrl+ j/k to cycle through tabs

## Vimium-C
--------------------------------
map <backspace> goBack
map <c-j> previousTab
map <c-k> nextTab

## problem with incomplete shutdown
--------------------------------
edited the /etc/defaut/grub file to
before: GRUB_CMDLINE_LINUX_DEFAULT="splash=silent mitigations=auto quiet security=apparmor"
new:    GRUB_CMDLINE_LINUX_DEFAULT="splash=silent mitigations=auto quiet security=apparmor acpi=force"

## sudo
--------------------------------
add via visudo the line
-> hartmut ALL=(ALL:ALL) NOPASSWD: ALL

in the file /etc/sudoers.d/10-installer
-> comment out the %wheel line (ergo everything)

add a new file in the same dir with the name 10-hartmut
-> hartmut ALL=(ALL:ALL) NOPASSWD: ALL

## screantearing
--------------------------------
create file /etc/X11/xorg.conf.d/20-amdgpu.conf with:

Section "Device"
Identifier "AMD Graphics"
Driver "amdgpu"
Option "TearFree" "true"
EndSection

##
--------------------------------

## firefox
--------------------------------

Plugins:
- uBlock
- Privacy Badger
- I still don't care about cookies
- Dark Reader
- Vimium C
- Multi Accpount container

enter about:profile in new tab to find the correct dir for user.js
make duck duck go the default search engine + vl andere kleine settings changes.

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

## Todoist Snap Package
--------------------------------
edit the Preferences file in
/home/hartmut/snap/todoist/1291/.config/Preferences
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

## Yazi fzf
--------------------------------
- fzf plugin
- Zoxide plugin
in the first init.lua:
require("fzf")
require("zoxide")
-> the rest like described in the documentation

## Vimium-C for Firefox
--------------------------------
map <backspace> goBack
map <c-j> previousTab
map <c-k> nextTab
map e LinkHints.activate
map E LinkHints.activateOpenInNewTab
unmap f

## Vimium-C for Brave
--------------------------------
map e LinkHints.activate
map E LinkHints.activateOpenInNewTab
unmap f

fdjkshlcmngui

## problem with incomplete shutdown
--------------------------------
edited the /etc/defaut/grub file to
before: GRUB_CMDLINE_LINUX_DEFAULT="splash=silent mitigations=auto quiet security=apparmor"
new:    GRUB_CMDLINE_LINUX_DEFAULT="splash=silent mitigations=auto quiet security=apparmor acpi=force"

## sudo
--------------------------------
add via visudo the line
-> hartmut ALL=(ALL:ALL) NOPASSWD: ALL

## screantearing
--------------------------------
first install the "xf86-video-amdgpu" package.
Then create the file /etc/X11/xorg.conf.d/20-amdgpu.conf with:

Section "Device"
   Identifier  "AMD Graphics"
   Driver      "amdgpu"
   Option      "TearFree"  "true"
EndSection

## Brave Plugins
--------------------------------
Dark Reader
Vimium C
Pdf Viewer for Vimium C
Sponsorblock
DF Youtube
Tabliss

## Brave Browser
--------------------------------
brave keybindings: search for "shortcut"

## /etc/zypp/zypp.conf
--------------------------------
uncomment and change to the following:
download.min_download_speed = 20000
download.may_concurrent_connections = 10

## bose headphones
--------------------------------
https://flx.ai/2019/bose-qc35ii-linux

create /etc/bluetooth/main.conf mit
ControllerMode = bredr

(noch connecting wieder löschen)

- bluez installieren (vl ist auch blueman wichtig)
- kopfhörer in paringmode (knopf nach vorne)
- 2C:41:A1:C9:35:20 einfach mit bluetoothctl verbinden

[bluetooth]# power on
[bluetooth]# agent on
[bluetooth]# default-agent
[bluetooth]# scan on

[bluetooth]# pair XX:XX:XX:XX:XX:XX
[bluetooth]# connect XX:XX:XX:XX:XX:XX
[bluetooth]# trust XX:XX:XX:XX:XX:XX

in case this is not the default:
pavucontrol -> "Configuration" (tab), and then for the Bose QuietComfort 35 profile select "High Fidelity Playback (A2DP Sink)"

## change hostname
--------------------------------
hostnamectl                        # show hostname
hostnamectl set-hostname thinkpad  # change hostname

## nerdfonts
--------------------------------
download nerdfonts and symbols from https://www.nerdfonts.com/font-downloads
put into /home/hartmut/.local/share/fonts

## miniconda (oder ist mamba besser?)
--------------------------------
documentation: https://docs.anaconda.com/miniconda/

to install miniconda just run the following commands:

mkdir -p ~/repos/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/repos/miniconda3/miniconda.sh
bash ~/repos/miniconda3/miniconda.sh -b -u -p ~/repos/miniconda3
rm -rf ~/repos/miniconda3/miniconda.sh

## vorta
--------------------------------
click on "+" next to repository and the rest is self explanatory

## fix some thunar error message (i dont need accessability stuff)
--------------------------------
create file   ~/.config/gtk-3.0/settings.ini   with:
[Settings]
gtk-modules=

## chromium based browser wayland
--------------------------------
type "chrome://flags/" in address bar
search for "Preferred Ozone platform"
set to "Wayland"

## vivaldi todoist
--------------------------------
ctrl + F11 to hide adress bar and tabs
vimium-c excluse: <c-e> <esc> ? T a d e e g h i j k n p r s t u v z

## pyprland setup
--------------------------------
https://hyprland-community.github.io/pyprland/Getting-started.html

## cursor theme
--------------------------------
download Bibata.tar.xz file from https://github.com/ful1e5/Bibata_Cursor and then:

tar -xvf Bibata.tar.gz                # extract `Bibata.tar.gz`
mv Bibata-* ~/.local/share/icons/     # Install to local users

## add german as secondary language
--------------------------------
in yast


## vscode
--------------------------------
https://code.visualstudio.com/docs/setup/linux
just run the following:

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" |sudo tee /etc/zypp/repos.d/vscode.repo > /dev/null

sudo zypper refresh
sudo zypper install code

## vlc
--------------------------------
im menü einstellen: "continue playback" -> Allways


## Browser New Tab Theme
--------------------------------
Tabliss Plugin


## cuda thunderbolt 
-------------------------------
boltctl list # to see uuid
sudo boltctl enroll c5030000-0080-7f08-23fe-a68e52c2c002 # policy should be auto
lspci -d ::03xx # to see it worked

install cuda:
https://docs.nvidia.com/cuda/cuda-installation-guide-linux/#

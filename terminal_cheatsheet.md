## VSCode replace all words with the same name
----------------------------------

F2        ... to change every instance in the notebook
ctrl + F2 ... to change only the variables inside a cell

## Vim
----------------------------------

Rename Variables:
* cw NEWNAME <esc> then repeat n. for other occurrences

## WiFi
----------------------------------
iwctl

station wlan0 show

station wlan0 scan
station wlan0 get-networks
station wlan0 connect network-name

http://www.google.com in chromium should redirect to login page

## Monitor
----------------------------------

List all connected displays along with their names:
xrandr

Only external monitor:
xrandr --output eDP --off --output HDMI-A-0 --auto

2 Monitor setup:
xrandr --auto --output eDP --mode 1920x1200 --left-of HDMI-A-0
xrandr --auto --output HDMI-A-0 --mode 1920x1200

## Bluetooth
----------------------------------

Maybe add ControllerMode = bredr to /etc/bluetooth/main.conf

systemctl restart bluetooth
bluetoothctl
power on
agent on
default-agent
san on
pair 2C:41:A1:C9:35:20
connect ...
trust ...

dann vl irgedwas mit pavuctl oder pa ctl

## paru
----------------------------------

paru    # Systemupdate including the AUR packages
paru -Rns     #remove package
paru -Qi     # show info
paru -Qs   #show where installed
paru -c    # clear unneeded dependencies


## Virtual Enviroment
----------------------------------

python -m venv /PATH/enviroment\_name
source /PATH/activate.fish

## zip and .tar.gz
----------------------------------

Unzip:
- unzip example.zip
- tar -xvzf documents.tar.gz

gzip:
-gzip test.txt

Unzip:
- gunzip test.txt

Zip:
zip archive.zip file1.txt file2.txt


## mount
----------------------------------

- sudo fdisk -l    oder    lsblk
- sudo mount /dev/sdX ~/usb_mount
- sudo mount -t ntfs3 /dev/sda1 ~/usb_mount/

sudo mount -t ntfs3 /dev/sda1 ~/usb_mount/

sudo mkfs.vfat /dev/sda1  ## FORMATIEREN

## AUR
----------------------------------

git clone link
(check depends, makedepends, conflicts, bash funktions on the bottom)
makepkg -si

Update:
git pull
makepkg -si

## clipboard
----------------------------------

cat test.txt | xclip -selection clipboard
the acronym is clip

## screenshot
----------------------------------

maim -s ~/Media/Screenshots/filename.png
maim ~/Media/Screenshots/filename.png # for fullscreen image

maim ~/Media/Screenshots/$(date +%s).png

## command to list unrequired packages not in base
----------------------------------

comm -23 <(pacman -Qqt | sort) <(pacman -Qqg base | sort)

## show size of directories
----------------------------------
du -sh   #size directory
du -hs *

## swapp esc key
----------------------------------

setxkbmap -option caps:swapescape

## git
----------------------------------
# normal push
git add -A  ... stage new, modified and deleted files
git add *   ... stage new and modified files which are not hidden
git add .   ... stage new and modified files, even the hidden ones
git commit -m "Header" -m "optional description"
git commit -am "_"  ...  add and commit at the same time
git push
# setup repo
git init
git remote add origin git@github.com:HartmutFritz/test.git
git remote -v (show remote repos)
git branch -M main
git push -u origin main
https://www.youtube.com/watch?v=RGOj5yH7evk

## ranger
----------------------------------
zh  ...  show hidden files

## terminal web browsing
----------------------------------
BROWSER=w3m ddgr 'algebraische topologie wikipedia'

## usefull stuff
----------------------------------
wc -l  # wordcount
bc  # basic calculator
cal
dd  # copy disc image to another
diff
comm  # similar to diff
cmp  # determines if two files are the same
sort  # sort lines of file
export  # set variable for current session
bg  # put process in background
cfdisk  # manage system partitions
fdisc
fc-cache  # update system font awareness
fc-list  # list fonts
free  # memory info
lsblk  # list connected block devices
blkid  # show info about mounted drives
lsusb  # info connected usb dev
uptime


## fish
----------------------------------
alt + .   -> prvious command
alt + s   -> add sudo (to previous command)

## wifi
----------------------------------
nmcli device wifi list
sudo nmcli device wifi connect Fernstudien-Gast

## chmod default
----------------------------------
find Documents/ -type f -exec chmod 666 {} \;
find Documents/ -type d -exec chmod 755 {} \;

## Zypper
----------------------------------
zypper pa -ir Packman #list packman packages

## Snapper
----------------------------------
sudo snapper list
sudo snapper undochange 221..244
sudo snapper create --description "a_good_working_system"
sudo snapper delete 195


## Image to pdf
----------------------------------
convert page.png page.pdf


## Bootable USB-Stick
----------------------------------
sudo umount /dev/sdX*
sudo dd bs=4M if=/home/hartmut/Downloads/your.iso of=/dev/sda status=progress && sync

## ssh
----------------------------------
ssh-keygen -t ed25519 -C "hartmut.fritz@proton.me"

## format USB-Stick
----------------------------------


## swww
----------------------------------
swww img <path/to/img>

## snapper
----------------------------------
# create snapshot which does not get deleted
snapper create --description "Snapshot for week 2 2022"

# delete snapshot
snapper delete 65

there is undochange and rollback. what is the difference?

## downgrade pkg
----------------------------------
download old rpm file from:
https://download.opensuse.org/history/

then sudo zypper in --oldpackage pkg.rpm


## pulsemixer
----------------------------------
 j k   ↑ ↓               Navigation
 h l   ← →               Change volume
 H L   Shift←  Shift→    Change volume by 10
 1 2 3 .. 8 9 0          Set volume to 10%-100%
 m                       Mute/Unmute
 Space                   Lock/Unlock channels
 Enter                   Context menu
 F1 F2 F3                Change modes
 Tab   Shift Tab         Next/Previous mode
 Mouse click             Select device or mode
 Mouse wheel             Volume change
 Esc q                   Quit


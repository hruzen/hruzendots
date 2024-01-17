# Hruzen's Dot-files 

Here's all my config files (I'm good at explaining)

Credits:-
- The Polybar theme was taken from [Murzchnvok](https://github.com/Murzchnvok)
- The Rofi theme was taken from [Adi1090x](https://github.com/adi1090x)
___
## Installation ( Important )
- The install script was created for personal use only.

- If you wish to use the [[#Install Script]] , please review the dependencies list to determine what you need or want to install. 

- **Using the _Install Script_ is ==NOT ESSENTIAL==**. My install script employs symbolic linking to organize files into their respective locations. However, if you prefer not to use install.sh, you can simply copy and paste all the files, provided you already have the necessary dependencies.
___
## Screen Shots
![2024-01-14_234352-](https://github.com/hruzen/hruzendots/assets/89473831/a8926cb0-d189-4066-899b-ba6d298323b7)
![2024-01-14_234357-](https://github.com/hruzen/hruzendots/assets/89473831/ef6237a2-fd1e-4b4a-96c6-3f2f5d48066e)
![2024-01-14_234537-](https://github.com/hruzen/hruzendots/assets/89473831/21b2644c-64d8-46a8-89e9-1fc52fc7dc64)
___
## Install Script
```
#!/bin/bash


hruzendots="$HOME/hruzendots"


#Installing Dependencies (arch only)
echo "Installing Yay"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

#Installing Dependencies (NOT ALL OF IT IS NEEDED! PLEASE CHECK BEFORE INSTALLING)
echo "Installing Dependencies"

yay -S alacritty betterlockscreen brightnessctl bspwm cmake dmenu dunst efibootmgr eza firefox flatpak git-credential-manager gvfs htop intel-ucode jdk-openjdk picom reflector lxappearance lxsession meson mpd mpv ncdu ncmpcpp neofetch neovim networkmanager nitrogen npm os-prober pavucontrol polybar ranger rofi sbctl scrot sddm sof-firmware sxhkd thunar timidity++ ueberzug ufw unrar unzip uthash wget wireplumber xorg xorg-xinit yt-dlp ytfzf zathura nerd-fonts-complete feh flat-remix-gtk paru peaclock pfetch picom-ftlabs-git obsidian pipes.sh tdrop emote bleachbit youtube-viewer unimatrix-git ttf-jetbrains-mono ttf-jetbrains-mono-nerd

#Download Dots
#echo "Downloading Dotfiles"
cd $HOME/Downloads/ && git clone https://github.com/hruzen/hruzendots.git


mkdir $HOME/Documents/.gitrepos/
mkdir $HOME/.scripts/

cp -r $HOME/Downloads/hruzendots/ $HOME/Documents/.gitrepos/
cd $HOME/Documents/.gitrepos/hruzendots

ln -s $HOME/Documents/.gitrepos/hruzendots/.config/alacritty ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/bspwm ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/dunst ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/mpd ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/ncmpcpp ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/neofetch ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/picom ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/polybar ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/rofi ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/sxhkd ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/youtube-viewer ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/zathura ~/.config

#cp -r $HOME/Documents/.gitrepos/hruzendots/.config/nvim ~/Documents

ln -s $HOME/Documents/.gitrepos/hruzendots/.local/share/fonts ~/.local/share
ln -s $HOME/Documents/.gitrepos/hruzendots/.scripts ~/

cp -r $HOME/Documents/.gitrepos/hruzendots/etc ~/Documents
cp -r $HOME/Documents/.gitrepos/hruzendots/Pictures ~/

ln -s $HOME/Documents/.gitrepos/hruzendots/.xinitrc ~/
ln -s $HOME/Documents/.gitrepos/hruzendots/.zshrc ~/

cd $HOME/ && rm -rf hruzendots/
```
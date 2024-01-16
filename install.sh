#!/bin/bash

hruzendots="$HOME/hruzendots"

#Installing Dependencies (arch only)
echo "Installing Yay"
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

#Installing Dependencies (arch only)
echo "Installing Dependencies"
sudo pacman -S base base-devel nvidia-open nvidia-utils  alacritty betterlockscreen brightnessctl bspwm cmake dmenu dunst efibootmgr eza firefox flatpak git git-credential-manager gvfs htop intel-ucode jdk-openjdk less picom reflector lxappearance lxsession meson mpd mpv ncdu ncmpcpp neofetch neovim networkmanager nitrogen npm os-prober pavucontrol polybar ranger rofi sbctl scrot sddm sof-firmware sxhkd thunar timidity++ ueberzug ufw unrar unzip uthash wget wireplumber xorg xorg-xinit yt-dlp ytfzf zathura && paru -S nerd-fonts-complete feh flat-remix-gtk paru peaclock pfetch picom-ftlabs-git obsidian pipes.sh tdrop emote bleachbit youtube-viewer unimatrix-git ttf-jetbrains-mono ttf-jetbrains-mono-nerd

#Download Dots
echo "Downloading Dotfiles"
cd && git clone https://github.com/hruzen/hruzendots.git

mkdir $HOME/Documents/
mkdir $HOME/Pictures/
mkdir $HOME/Documents/.gitrepos/
mkdir $HOME/.scripts/
mv $HOME/hruzendots $HOME/Documents/.gitrepos/

cd $HOME/Documents/.gitrepos/hruzendots

ln -s $HOME/Documents/.gitrepos/hruzendots/.config/alacritty ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/bspwm ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/dunst ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/mpd ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/ncmpcpp ~/.config
rm -r $HOME/.config/neofetch && ln -s $HOME/Documents/.gitrepos/hruzendots/.config/neofetch ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/picom ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/polybar ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/rofi ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/sxhkd ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/youtube-viewer ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/.config/zathura ~/.config

mv $HOME/Documents/.gitrepos/hruzendots/.config/nvim ~/Documents

ln -s $HOME/Documents/.gitrepos/hruzendots/.local ~/.local
ln -s $HOME/Documents/.gitrepos/hruzendots/.scripts ~/.scripts

mv $HOME/Documents/.gitrepos/hruzendots/etc ~/Documents
mv $HOME/Documents/.gitrepos/hruzendots/Pictures ~/Pictures

cp $HOME/Documents/.gitrepos/hruzendots/xinitrc ~/
cp $HOME/Documents/.gitrepos/hruzendots/zshrc ~/

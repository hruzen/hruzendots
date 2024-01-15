#!/bin/bash

hruzendots="$HOME/hruzendots"

#Installing Dependencies (arch only)
echo "Installing Dependencies"
sudo pacman -S bspwm rofi dmenu obs-studio sxhkd discord alacritty ranger dunst mpd ncmpcpp mpv neofetch firefox zsh git neovim flatpak picom npm nodejs jdk-openjdk && paru -S nerd-fonts-complete feh ueberzug

#Download Dots
echo "Downloading Dotfiles"
cd && git clone https://github.com/hruzen/hruzendots.git

mkdir $HOME/Documents/.gitrepos/
mv hruzendots = $HOME/Documents/.gitrepos/

cd $HOME/Documents/.gitrepos/hruzendots
ln -s $HOME/Documents/.gitrepos/hruzendots/bspwm ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/alacritty ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/zsh ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/dunst ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/mpd ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/ncmpcpp ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/mpv ~/.config
#rm -r $HOME/.config/neofetch && ln -s $HOME/Documents/.gitrepos/hruzendots/neofetch ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/picom ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/ranger ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/qutebrowser ~/.config
ln -s $HOME/Documents/.gitrepos/hruzendots/rofi ~/.config
#! /bin/bash

yes Y | sudo pacman -Qtdq | sudo pacman -Rns -

yes Y | sudo pacman -Sc
yes Y | sudo pacman -Scc
yes Y | sudo pacman -Scd
yes Y | sudo pacman -Sccd

yes Y | yay -Sc
yes Y | yay -Scc
yes Y | yay -Scd
yes Y | yay -Sccd

yes Y | paru -Sc
yes Y | paru -Scc
yes Y | paru -Scd
yes Y | paru -Sccd

ncdu

du -sh /var/cache/pacman/pkg/ ~/.cache/yay/ ~/.cache/paru/

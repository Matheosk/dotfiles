#!/bin/sh
yay -Scc

yay -Ycc

sudo pacman -Rs $(pacman -Qtdq)

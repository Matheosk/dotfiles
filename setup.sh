#!/bin/sh
set -e

dir=$(pwd)

sudo echo ""

################
# Package List #
################
# here's the list of the packages
# i need for the config and some 
# other programs

PACKAGES=(
  base-devel
  stow
  alacritty
  fastfetch # cuz i use arch btw
  hyprland
  hyprpaper
  hyprsunset 
  hyprlock
  ttf-firacode-nerd
  otf-hermit-nerd
  libnotify
  dunst
  hyprshot
  xwayland
  xwaylandvideobridge
  xdg-desktop-portal-hyprland
  waybar
  mpd
  rmpc
  caligula
  kitty
  rofi-wayland
  rofimoji
  fzf
  zsh
  neovim
  rust
  rust-analyzer
  mpv
  yt-dlp
  kdenlive
  bat
  eza
  zoxide
  feh 
  steam
  discord
  flatpak
  vim
  lutris
  python-pipx
  light
  ttf-font-awesome
)

clear 

echo -e "╭──────────────────────────────────────────────╮"
echo -e "|          \033[36;49;1;3mMatheosk's dots autosetup\033[0m           |"
echo -e "╰──────────────────────────────────────────────╯"

echo "· Installing pacman packages..."
sudo pacman -Syu $PACKAGES --needed --noconfirm > /dev/null


echo "· Installing yay..."
tmpdir=$(mktemp -d)
git clone https://aur.archlinux.org/yay.git "$tmpdir/yay"
cd "$tmpdir/yay"
makepkg -si --noconfirm > /dev/null
cd "$dir"
rm -rf "$tmpdir"



echo "· Installing dotfiles..."
cd "$dir"
stow -v */


echo "· Setting up zsh..."
chsh -s /bin/zsh


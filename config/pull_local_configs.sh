#! /bin/sh

rm -rf nvim zathura lazygit lf fish

git clone ~/.config/nvim nvim
git clone ~/.config/zathura zathura
git clone ~/.config/lazygit lazygit
git clone ~/.config/lf lf
git clone ~/.config/fish fish

rm -rf */.git
rm -rf */.gitignore

cp ~/.config/VSCodium/User/settings.json .
cp ~/.ideavimrc ideavimrc

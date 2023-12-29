sudo pacman -Scc
sudo pacman -Rns $(pacman -Qtdq)
sudo rm -rf ~/.cache/paru

sudo pacman -S rmlint filelight
rmlint ~
# cleanup google-chrome's cache manually through the browser

sudo journalctl --vacuum-size=50M
sudo journalctl --vacuum-time=4weeks

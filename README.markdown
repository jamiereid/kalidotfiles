My dotfiles for Kali Linux. Started as a fork of my [dotfiles](https://github.com/jamiereid/dotfiles) that I use on other systems.

## "Dependancies""
Without these you'll have a bad time with these dotfiles (or they just won't do anything).

```sh
sudo apt update && sudo apt dist-upgrade
sudo apt install i3 i3blocks rofi scrot feh compton
sudo apt install fonts-font-awesome fonts-noto fonts-noto-mono
``` 

## install

Run this:

```sh
git clone https://github.com/jamiereid/kalidotfiles.git ~/.dots
cd .dots
./deploy.sh
```

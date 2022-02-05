echo Han Aikawa personal Arch Environment script 

echo installing yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo installing i3 environment stage 1
sudo pacman -S i3-gaps ttf-font-awesome easyeffects blueberry rofi

echo installing i3 environment stage 2
yay -S polybar picom-ibhagwan-git

echo installing i3 environment stage 3
cd $HOME/Downloads
sudo mv .config $HOME

echo installing LightDM and Greeter
sudo pacman -S lightdm lightdm-gtk-greeter

echo installing Huawei WMI
git clone https://github.com/aymanbagabas/Huawei-WMI
cd Huawei-WMI
make
sudo cp huawei-wmi.ko /lib/modules/$(uname -r)/updates/
sudo depmod
sudo make install

echo setting autologin
sudo groupadd -r autologin
sudo gpasswd -a hanaikawa autologin
cd $HOME/Downloads
sudo cp lightdm.conf /etc/lightdm/lightdm.conf

echo installing pipewire
sudo pacman -Rns pulse-audio
sudo pacman -S pipewire-pulse


echo installing Steam 
echo Choose "vulkan-radeon" for AMD, "nvidia-utils" for Nvidia, "vulkan-intel" 
sudo pacman -S steam

echo installing Discord
sudo pacman -S discord

echo installing Visual Studio Code
sudo pacman -S code 

echo installing Google Chrome
yay -S google-chrome

echo installing Spotify
yay -S spotify 

reboot


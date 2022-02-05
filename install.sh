echo Han Aikawa personal Arch Environment script 

echo installing yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo installing i3 environment stage 1
sudo pacman -S i3-gaps xf86-video-amdgpu xorg ttf-font-awesome easyeffects blueberry rofi

echo installing i3 environment stage 2
yay -S polybar picom-ibhagwan-git

echo installing Huawei WMI
git clone https://github.com/aymanbagabas/Huawei-WMI
cd Huawei-WMI
make
sudo cp huawei-wmi.ko /lib/modules/$(uname -r)/updates/
sudo depmod
sudo make install


echo installing pipewire
sudo pacman -S pipewire-pulse

echo installing Google Chrome
yay -S google-chrome

reboot


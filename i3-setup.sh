echo installing yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
echo installing i3 environment 
sudo pacman -S i3-gaps xf86-video-amdgpu xorg ttf-font-awesome easyeffects blueberry rofi nitrogen
echo installing i3 environment stage 2
yay -S polybar picom-ibhagwan-git

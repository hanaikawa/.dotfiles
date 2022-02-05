echo installing Huawei WMI
git clone https://github.com/aymanbagabas/Huawei-WMI
cd Huawei-WMI
make
sudo cp huawei-wmi.ko /lib/modules/$(uname -r)/updates/
sudo depmod
sudo make install

echo edit this /sys/devices/platform/huawei-wmi/charge_control_thresholds

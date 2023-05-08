### Install Fedora 38 (Custom) 
>Dwnload and install [Fedora 38 Server](https://fedoraproject.org/server/download) (Custom)
### Install Nvidia Driver
Enable RPM Fusion repo
```
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```
Install some tools
```
sudo dnf groupinstall "Development Tools" "Development Libraries"
sudo dnf install openssl kmodtool akmods
```
Enable Secure Boot
```
sudo kmodgenca
sudo mokutil --import /etc/pki/akmods/certs/public_key.der
```
`Reboot and Enroll MOK.`
>See [RPM Fusion/Howto/Secure Boot](https://rpmfusion.org/Howto/Secure%20Boot?highlight=%28%5CbCategoryHowto%5Cb%29)

Install Nvidia Driver
```
sudo dnf install akmod-nvidia
sudo dnf install xorg-x11-drv-nvidia-cuda
```
>See [RPM Fusion/Howto/Nvidia](https://rpmfusion.org/Howto/NVIDIA?highlight=%28%5CbCategoryHowto%5Cb%29).

Force kernel
```
sudo akmods --force
sudo dracut --force
sudo reboot
```

### Install Hyprland
Enable and install Hyprland Copr Repo
```
sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland waybar-hyprland xdg-desktop-portal-hyprland hyprpaper
```
`copy .config to your home folder.`

Install other packages
```
sudo dnf install jq polkit-kde qt5ct qt6-qtwayland gnome-keyring htop
sudo dnf install thunar
sudo dnf install blueman python-cairo python-gobject
sudo dnf install fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk
```
>Kitty can't run in my vm.Use other term eg: Foot.

### SDDM
```
sudo dnf install sddm
```
auto login if need. edit /etc/sddm/sddm.conf
```
[Autologin]
User = user_name
Session = session_name
```
set graphical.target if need
```
sudo systemctl set-default graphical.target
```
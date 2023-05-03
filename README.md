### Install Fedora 38(Minimal) 
>Dwnload and install [Fedora 38 Server](https://fedoraproject.org/server/download)(Minimal)
### Install Nvidia Driver
<p>Enable RPM Fusion repo</p>
```
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```
<p>Install some tools</p>
```
sudo dnf groupinstall "Development Tools" "Development Libraries"
sudo dnf install mokutil openssl kmodtool akmods
```
<p>Enable Secure Boot</p>
```
sudo kmodgenca
sudo mokutil --import /etc/pki/akmods/certs/public_key.der
```
`Reboot and Enroll MOK.`
>See [RPM Fusion/Howto/Secure Boot](https://rpmfusion.org/Howto/Secure%20Boot?highlight=%28%5CbCategoryHowto%5Cb%29)

<p>Install Nvidia Driver</p>
```
sudo dnf install akmod-nvidia
sudo dnf install xorg-x11-drv-nvidia-cuda
```
>See [RPM Fusion/Howto/Nvidia](https://rpmfusion.org/Howto/NVIDIA?highlight=%28%5CbCategoryHowto%5Cb%29).

<p>Force kernel</p>
```
sudo akmods --force
sudo dracut --force
sudo reboot
```

### Install Hyprland
<p>Enable and install Hyprland Copr Repo</p>
```
sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland waybar-hyprland xdg-desktop-portal-hyprland hyprpaper

cp .config to your home fold.
```

<p>Install other packages</p>
```
sudo dnf install jq thunar kitty dunst polkit-kde
```
>Kitty can't run in my vm.Use other term eg: Foot.
### Install Nerd Fonts
```
% ~/.config/scripts/install-jetbrains-mono-nerd-fonts.sh

option: -l -n
  -l              print nerd-fonts name list
  -n fonts_name   install fonts_name. eg: JetBrainsMono.zip
```

### SDDM Auto Login
```
sudo dnf install sddm
```
<p>edit /etc/sddm/sddm.conf</p>
```
[Autologin]
User = user_name
Session = session_name
```
<p>set graphical.target if need</p>
```
sudo systemctl set-default graphical.target
```
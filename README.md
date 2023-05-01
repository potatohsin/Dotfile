# Install Hyprland
sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland waybar-hyprland
sudo dnf install qt5-qtwayland qt6-qtwayland
sudo dnf install jq
sudo dnf install vulkan-headers

# SDDM Auto Login
sudo dnf install sddm
/etc/sddm/sddm.conf
[Autologin]
User = user_name
Session = session_name
sudo systemctl set-default graphical.target
# Install Hyprland
sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland waybar-hyprland xdg-desktop-portal-hyprland hyprpaper 
sudo dnf install dunst mako clipman qt5-qtwayland qt6-qtwayland qt5ct libva 
sudo dnf install jq thunar thunar-archive-plugin thunar-media-tags-plugin polkit-kde

# SDDM Auto Login
sudo dnf install sddm
/etc/sddm/sddm.conf
[Autologin]
User = user_name
Session = session_name
sudo systemctl set-default graphical.target
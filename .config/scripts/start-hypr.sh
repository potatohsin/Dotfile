#!/bin/sh

# DO NOT DELETE this file or move it!!
# Startup file for Hyprland used by sddm

# Changing the exports below is not recommended
export XDG_CURRENT_DESKTOP=Hyprland
export XDG_SESSION_TYPE=wayland
export XDG_SESSION_DESKTOP=Hyprland
# export WAYLAND_DISPLAY=

# the line below may help with multiple monitors
#export WLR_EGL_NO_MODIFIERS=1

#Add your own exports below this line

exec Hyprland
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# My Config hyprland Installation

## Requirements
- Arch Linux installed
- Git installed: `sudo pacman -S git`
- yay installed `sudo pacman -S yay`
- All other dependencies are included in the installation script

 
If the dependencies are not installed, you can use the following command to install them:  

```bash
yay -S --needed --noconfirm \
    hyprland ags-hyprpanel-git kitty alacritty \
    rofi-wayland dunst neovim git fish \
    polkit-kde-agent brightnessctl pamixer grim slurp \
    wl-clipboard fastfetch \
    firefox ttf-jetbrains-mono ttf-nerd-fonts-symbols-mono \
    hyprcursor hyprgraphics hyprland-qtutils \
    hyprland-qt-support hyprlang hyprutils brave-bin \
    xdg-desktop-portal xdg-desktop-portal-hyprland hyprpaper waypaper-git \
    ttf-material-symbols-variable-git swww nwg-look wlogout hyprlock hyprpaper \
    nautilus dolphin kwrite unrar 7zip sddm foot \
    cliphist playerctl tesseract \
    swappy hyprpicker gnome-control-center thunar \
    gnome-text-editor wps-office gnome-system-monitor \
    easyeffects pavucontrol pokemon-colorscripts-git
```

## Dotfiles Installation

1: Clone the repository:

```bash
git clone https://github.com/Shaqkiller/dotfiles.git
cd dotfiles/
```
2: run to script 
```
bash
sudo ./install.sh
```


![image](https://github.com/user-attachments/assets/ceaae658-a536-4151-b42f-3b3c91f72fd7)
![image](https://github.com/user-attachments/assets/9015847d-acc0-4fea-b4b8-35b1cbfeff66)
![image](https://github.com/user-attachments/assets/da98d7cb-c99d-4f6e-9ffa-38212cfa3d6a)
![image](https://github.com/user-attachments/assets/9d87be90-e034-4bf9-83c8-1548e0a31db1)

## If you encounter issues with your monitor/resolution, read the Hyprland wiki:
- https://wiki.hyprland.org/Configuring/Monitors/

# Keybinds 
```
⊞ + Enter = Open terminal (Kitty)  
⊞ + B = Open browser (Brave)  
⊞ + E = Open file manager (Nautilus)  
⊞ + C = Open code editor (VSCode)  
⊞ + T = Open terminal (Foot)  
⊞ + Alt + E = Open file manager (Thunar)  
⊞ + W = Open browser (Google Chrome)  
⊞ + X = Open text editor (GNOME Text Editor)  
⊞ + Shift + W = Open office suite (WPS Office)  
⊞ + Ctrl + V = Open audio settings (Pavucontrol)  
⊞ + Ctrl + Shift + V = Open audio effects manager (EasyEffects)  

⊞ + 1 → Switch to workspace 1  
⊞ + 2 → Switch to workspace 2  
⊞ + 3 → Switch to workspace 3  
⊞ + 4 → Switch to workspace 4  
⊞ + 5 → Switch to workspace 5  
⊞ + 6 → Switch to workspace 6  
⊞ + 7 → Switch to workspace 7  
⊞ + 8 → Switch to workspace 8  
⊞ + 9 → Switch to workspace 9  
⊞ + 0 → Switch to workspace 10  

⊞ + D = Maximize window  
⊞ + F = Toggle fullscreen  

⊞ + Scroll Down → Switch to next workspace  
⊞ + Scroll Up → Switch to previous workspace  

⊞ + Left Mouse Button → Move window by dragging  
⊞ + Right Mouse Button → Resize window by dragging  

⊞ + ← → Move window focus left  
⊞ + → → Move window focus right  
⊞ + ↑ → Move window focus up  
⊞ + ↓ → Move window focus down  

⊞ + Alt + S = Hide window  
⊞ + S = Show hidden window  

Ctrl + Shift + S = Clipboard screenshot  
Ctrl + Alt + Delete = Open logout panel  
```
## If you want to dive deeper into the keybinds, go to:

- ~/.config/hypr/hyprland/keybinds.conf



## I will be making an installation tutorial video soon.






# If you have any questions, feel free to comment, and I'll respond as soon as possible!



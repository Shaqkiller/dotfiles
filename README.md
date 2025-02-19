---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# My Config hyprland Installation

## Requirements
- Arch Linux installed
- Git installed: `sudo pacman -S git`
- All other dependencies are included in the installation script

 
If the dependencies are not installed, you can use the following command to install them:  

```bash
yay -S --needed --noconfirm \
    hyprland ags-hyprpanel-git kitty alacritty \
    pipewire pipewire-pulse pipewire-alsa pipewire-jack \
    rofi dunst neovim git fish fuzzel \
    polkit-kde-agent brightnessctl pamixer grim slurp \
    wl-clipboard fastfetch \
    firefox ttf-jetbrains-mono ttf-nerd-fonts-symbols-mono \
    nwg-dock-hyprland hyprcursor hyprgraphics ags hyprland-qtutils \
    hyprland-qt-support hyprlang hyprutils brave-bin hyprwayland-scanner \
    xdg-desktop-portal xdg-desktop-portal-hyprland hyprpaper waypaper-git \
    ttf-material-symbols-variable-git swww nwg-look wlogout hyprlock hyprpaper \
    fluent-gtk-theme jasper-gtk-theme-git colloid-gtk-theme-git graphite-gtk-theme \
    nautilus dolphin kwrite unrar 7zip config sddm foot \
    pkill cliphist playerctl grimblast.sh tesseract \
    wpctl swappy tesseract-ocr hyprpicker gnome-control-center thunar \
    google-chrome-stable brave gnome-text-editor wps-office gnome-system-monitor \
    easyeffects pavucontrol
```

## Dotfiles Installation

1: Clone the repository:

```bash
git clone https://github.com/Shaqkiller/dotfiles.git
cd dotfiles/
```
2: run to script 
```
sudo ./install.sh
```


![image](https://github.com/user-attachments/assets/c5d603c1-3a9d-4c5e-b47f-97dba94f16b1)
![image](https://github.com/user-attachments/assets/e2ddc916-693b-466c-90e1-8dd9bae440c3)
![image](https://github.com/user-attachments/assets/ccb53226-fb02-474d-8777-66aec7dffe41)
![image](https://github.com/user-attachments/assets/9877bb14-fd21-4e68-9945-1fb01a7212db)

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



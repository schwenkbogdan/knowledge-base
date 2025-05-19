uwspm


# Базовые пакеты
sudo pacman -Syu --noconfirm 
##yay install

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git 
cd yay
makepkg -si

hyprland xdg-desktop-portal-hyprland xdg-user-dirs xdg-utils dbus hyprctl hyprpicker hyprlock hyprcursor hyprshot hyprpaper\
  xdg-desktop-portal-wlr xdg-desktop-portal
  waybar mako wofi alacritty thunar thunar-volman tumbler gvfs gvfs-mtp brightnessctl network-manager-applet blueman-applet\
  pipewire wireplumber wl-clipboard\
  polkit-gnome xdg-utils wl-clipboard cliphist \
  gnome-themes-extra gnome-keyring qt5-wayland qt6-wayland \
  noto-fonts ttf-jetbrains-mono ttf-font-awesome \
  firefox neovim git unzip noto-fonts noto-fonts-emoji


##themes## adwaita-qt adwaita-dark qt5ct qt6ct kvantum-qt5 kvantum-qt6 lxappearance papirus-icon-theme
yay -S catppuccin-gtk-theme

 catppuccin-cursors-mocha
Bibata-Modern-Ice
apple-fonts 7zip
  | Пакет              | Назначение                                    |
| ------------------ | --------------------------------------------- |
| `thunar`           | файловый менеджер                             |
| `thunar-volman`    | автомонтирование флешек и дисков              |
| `tumbler`          | генератор превью (для картинок, видео)        |
| `gvfs`, `gvfs-mtp` | поддержка сетевых и MTP-устройств (телефонов) |

| Пакет                     | Назначение                                               |
| ------------------------- | -------------------------------------------------------- |
| `pipewire`, `wireplumber` | современная замена PulseAudio/ALSA                       |
| `pavucontrol`             | GUI для управления звуком (громкость, устройства и т.д.) |


 sudo pacman -S --needed greetd tuigreet seatd


подключение репозиториев

sudo vim /etc/pacman.conf

установка драйверов видеокарт

xf86-video-amdgpu 
mesa
nvidia
nvidia-utils nvidia-settings

:: Repository extra
   1) amdvlk  2) nvidia-utils  3) vulkan-dzn
   4) vulkan-gfxstream  5) vulkan-intel
   6) vulkan-nouveau  7) vulkan-radeon                     8) vulkan-swrast  9) vulkan-virtio

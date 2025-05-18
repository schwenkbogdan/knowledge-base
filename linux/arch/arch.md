
# Базовые пакеты
sudo pacman -Syu --noconfirm 


hyprland xdg-desktop-portal-hyprland hyprctl hyprpicker hyprlock hyprcursor \
  xdg-desktop-portal-wlr xdg-desktop-portal
  waybar hyprpaper mako dmenu kitty thunar thunar-volman tumbler gvfs gvfs-mtp \
  pipewire wireplumber pavucontrol \
  polkit-gnome xdg-utils wl-clipboard cliphist \
  gtk3 gnome-themes-extra gnome-keyring qt5-wayland qt6-wayland \
  noto-fonts ttf-jetbrains-mono ttf-font-awesome \
  firefox neovim git unzip htop

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

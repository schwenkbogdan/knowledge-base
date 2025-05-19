sudo pacman -S greetd tuigreet
yay -S tuigreet


sudo echo /etc/greetd/config.toml 
"
[terminal]
vt = 1

[default_session]
command = "tuigreet --cmd Hyprland --time --user-menu --remember --remember-user-session"
user = "greeter"
"
sudo useradd -M -G video,seat -s /usr/bin/nologin greeter
sudo systemctl enable greetd.service
echo ~/.config/tuigreet/config.toml
"
[tuigreet]
show_time = true
remember_user = false
remember_session = true
user_menu = false
"
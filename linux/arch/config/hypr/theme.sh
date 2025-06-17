#!/bin/bash

THEME='adw-gtk3-dark'
ICONS='Papirus-Dark'z
FONT='SH-Pro-Regular'  # Добавлен размер шрифта
CURSOR='Bibata-Modern-Ice'

SCHEMA='org.gnome.desktop.interface'

apply_themes() {
    gsettings set $SCHEMA gtk-theme "$THEME"
    gsettings set $SCHEMA icon-theme "$ICONS"
    gsettings set $SCHEMA cursor-theme "$CURSOR"
    gsettings set $SCHEMA font-name "$FONT"
}

apply_themes

#!/usr/bin/env bash

# light
gtk_light="Matcha-light-azul"
icons_light="candy-icons"
desktop_bg_light="/usr/share/backgrounds/xfce/mountains-1412683.jpg"

# dark
gtk_dark="Matcha-dark-azul"
icons_dark="candy-icons"
desktop_bg_dark="/usr/share/backgrounds/manjaro-wallpapers-18.0/manjaro-cat.jpg"

# current mode determined by gtk theme
gtk="$(xfconf-query -c xsettings -p /Net/ThemeName)"

if [[ "$gtk" = "$gtk_light" ]]; then
	xfconf-query -c xsettings -p /Net/ThemeName -s "$gtk_dark"
	xfconf-query -c xfwm4 -p /general/theme -s "$xfwm_dark"
	xfconf-query -c xsettings -p /Net/IconThemeName -s "$icons_dark"
	xfconf-query -c xfce4-panel -p /panels/dark-mode -s true
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s "$desktop_bg_dark"
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorDisplayPort-1/workspace0/last-image -s "$desktop_bg_dark"
else
	xfconf-query -c xsettings -p /Net/ThemeName -s "$gtk_light"
	xfconf-query -c xfwm4 -p /general/theme -s "$xfwm_light"
	xfconf-query -c xsettings -p /Net/IconThemeName -s "$icons_light"
	xfconf-query -c xfce4-panel -p /panels/dark-mode -s false
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP/workspace0/last-image -s "$desktop_bg_light"
	xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorDisplayPort-1/workspace0/last-image -s "$desktop_bg_light"
fi

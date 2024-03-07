#!/usr/bin/env bash

# light
gtk_light="Matcha-light-azul" #"Layan-Light-Solid"
#xfwm_light="Skeuos-Blue-Light-XFWM" #"Layan-Light-Solid"
icons_light="candy-icons"

# dark
gtk_dark="Matcha-dark-azul" #"Layan-Dark-Solid"
#xfwm_dark="Skeuos-Blue-Dark-XFWM" #"Layan-Dark-Solid"
icons_dark="candy-icons"

# current mode determined by gtk theme
gtk="$(xfconf-query -c xsettings -p /Net/ThemeName)"

if [[ "$gtk" = "$gtk_light" ]]; then
xfconf-query -c xsettings -p /Net/ThemeName -s "$gtk_dark"
xfconf-query -c xfwm4 -p /general/theme -s "$xfwm_dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "$icons_dark"
xfconf-query -c xfce4-panel -p /panels/dark-mode -s true
else
xfconf-query -c xsettings -p /Net/ThemeName -s "$gtk_light"
xfconf-query -c xfwm4 -p /general/theme -s "$xfwm_light"
xfconf-query -c xsettings -p /Net/IconThemeName -s "$icons_light"
xfconf-query -c xfce4-panel -p /panels/dark-mode -s false
fi

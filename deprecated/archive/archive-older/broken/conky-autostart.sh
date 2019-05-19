rm $HOME/.config/autostart/conky.desktop

printf "[Desktop Entry]\n\
Type=Application\n\
Exec=conky -c $HOME/.conky/conkywifi\n\
X-GNOME-Autostart-enabled=true\n\
NoDisplay=false\n\
Hidden=false\n\
Name[en_ZA]=conky\n\
Comment[en_ZA]=Conky Wifi\n\
X-GNOME-Autostart-Delay=5\n" > $HOME/.config/autostart/conky.desktop

rm $HOME/.config/autostart/dropbox_fix.desktop

printf "[Desktop Entry]\n\
Type=Application\n\
Exec=dbus-launch dropbox start\n\
X-GNOME-Autostart-enabled=true\n\
NoDisplay=false\n\
Hidden=false\n\
Name[en_ZA]=Dropbox Fix\n\
Comment[en_ZA]=Dropbox Fix\n\
X-GNOME-Autostart-Delay=5\n" > $HOME/.config/autostart/dropbox_fix.desktop

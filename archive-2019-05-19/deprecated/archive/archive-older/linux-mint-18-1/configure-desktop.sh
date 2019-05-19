#!/bin/bash

echo "Installing dconf-cli..."
sudo apt-get install dconf-cli

dconf write /org/nemo/preferences/default-folder-viewer "'list-view'"
dconf write /org/nemo/preferences/show-new-folder-icon-toolbar "true"
dconf write /org/nemo/preferences/show-open-in-terminal-toolbar "true"
dconf write /org/nemo/preferences/close-device-view-on-device-eject "true"
dconf write /org/nemo/preferences/show-hidden-files "true"
dconf write /org/nemo/preferences/show-reload-icon-toolbar "true"
dconf write /org/nemo/preferences/thumbnail-limit "1048576"
dconf write /org/nemo/preferences/show-icon-text "'local_only'"
dconf write /org/cinnamon/overview-corner "['expo:true:false', \
'scale:false:false', 'scale:false:false', 'desktop:false:false']"
dconf write /org/cinnamon/desktop/screensaver/lock-enabled "false"
dconf write /org/cinnamon/settings-daemon/plugins/power/lock-on-suspend "false"

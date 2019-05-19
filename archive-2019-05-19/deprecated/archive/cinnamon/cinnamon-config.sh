#!/bin/bash

# Disable Workspace display and expo applets
dconf write /org/cinnamon/enabled-applets "['panel1:left:0:menu@cinnamon.org:0', 'panel1:left:1:separator@cinnamon.org:1', 'panel1:left:2:panel-launchers@cinnamon.org:2', 'panel1:left:3:separator@cinnamon.org:3', 'panel1:left:5:show-desktop@cinnamon.org:5', 'panel1:left:6:window-list@cinnamon.org:6', 'panel1:right:0:notifications@cinnamon.org:7', 'panel1:right:2:windows-quick-list@cinnamon.org:9', 'panel1:right:3:separator@cinnamon.org:10', 'panel1:right:4:removable-drives@cinnamon.org:11', 'panel1:right:5:systray@cinnamon.org:12', 'panel1:right:6:separator@cinnamon.org:13', 'panel1:right:7:network@cinnamon.org:14', 'panel1:right:8:sound@cinnamon.org:15', 'panel1:right:9:power@cinnamon.org:16', 'panel1:right:10:inhibit@cinnamon.org:17', 'panel1:right:11:calendar@cinnamon.org:18', 'panel1:right:12:user@cinnamon.org:19']"

# Nemo config
dconf write /org/nemo/preferences/default-folder-viewer "'list-view'"
dconf write /org/cinnamon/desktop/media-handling/automount "false"
dconf write /org/nemo/preferences/show-open-in-terminal-toolbar "true"
dconf write /org/nemo/preferences/show-new-folder-icon-toolbar "true"

# Enable expo hot corner
dconf write /org/cinnamon/overview-corner "['expo:true:false:0', 'scale:false:false:0', 'scale:false:false:0', 'desktop:false:false:0']"



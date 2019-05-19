#!/bin/sh

export DISPLAY=:0
export XAUTHORITY=/home/evert/.Xauthority

echo [$(date)] Black screen Fix Started... >> /home/evert/log.txt
echo \$1=$1 >> /home/evert/log.txt
echo [$(date)] Using Display=$DISPLAY >> /home/evert/log.txt

# xrandr working?
xrandr

while [ $? -eq 1 ]; do
    echo "[$(date)] Cannot open display $DISPLAY! Sleeping for 1 second..." >> /home/evert/log.txt

    sleep 1

    # Working now?
    xrandr
done

# If we are here it is working...

echo "[$(date)] Toggling resolution..." >> /home/evert/log.txt
xrandr --output LVDS --mode 1280x720
xrandr --output LVDS --mode 1366x768

echo [$(date)] Black screen Fix Finished. >> /home/evert/log.txt

scrot -e 'convert -resize 20% -fill "#282828" -colorize 50% -blur 0x1 -resize 500% $f ~/lockbg.png' locksc.png
convert -gravity center -composite ~/lockbg.png ~/Pictures/Icons/lock.png ~/lockfinal.png
i3lock -u -i ~/lockfinal.png
rm ~/lockfinal.png ~/lockbg.png ~/locksc.png

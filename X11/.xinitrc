urxvtd -o -q -f

xrdb -merge ~/.config/X11/.Xresources
udiskie &
setxkbmap -option caps:escape
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&

#exec i3
exec bspwm


urxvtd -o -q -f
xrdb -merge ~/.config/X11/.Xresources
exec i3

setxkbmap -option caps:escape
setxkbmap -option 'caps:ctrl_modifier'
setxkbmap -option 'caps:ctrl_modifier';xcape -e 'Caps_Lock=Escape'&

xset fp+ /usr/share/fonts/tewi-font &
xset fp+ /usr/share/fonts/spleen &

export GTK_THEME=Adwaita:dark
export SUDO_ASKPASS=/usr/local/bin/daskpass
export _JAVA_AWT_WM_NONREPARENTING=1

# slstatus &
# 
# pipewire &
# 
# picom &
# 
# dunst >~/dunst.log &

monr.sh &

./.fehbg &

# while true; do
#     TORUN=$(dmenu_path | dmenu)
#     [ $TORUN = 'nope' ] && break
#     $TORUN
# done

[ -n "$DWM_DEBUG" ] && exec gdbserver localhost:5555 /home/reuben/git/dwm/dwm
exec dbus-launch --exit-with-session runsvdir /home/richard/service
# exec dbus-launch --exit-with-session openbox-session
# exec dbus-launch --exit-with-session /usr/local/bin/spectrwm
# exec dbus-launch --exit-with-session /home/reuben/git/spectrwm/linux/spectrwm
# exec ratpoison

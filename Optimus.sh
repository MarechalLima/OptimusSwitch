#!/bin/bash
current_gpu=$(prime-select query)
aux="intel"
if [ $current_gpu == $aux ]; then
 sed -i 's/gnome/gnome-xorg/g' /var/lib/AccountsService/users/yourUsername
 prime-select nvidia
else
 sed -i 's/gnome-xorg/gnome/g' /var/lib/AccountsService/users/yourUsername
 prime-select intel
fi


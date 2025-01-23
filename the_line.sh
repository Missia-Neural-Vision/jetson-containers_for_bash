#!/bin/bash

docker run --runtime nvidia -it --rm --network host --shm-size=8g --volume /tmp/argus_socket:/tmp/argus_socket --volume /etc/enctune.conf:/etc/enctune.conf --volume /etc/nv_tegra_release:/etc/nv_tegra_release --volume /tmp/nv_jetson_model:/tmp/nv_jetson_model --volume /var/run/dbus:/var/run/dbus --volume /var/run/avahi-daemon/socket:/var/run/avahi-daemon/socket --volume /var/run/docker.sock:/var/run/docker.sock --volume /home/jetsonorinnx/Documents/Jetson_bash/jetson-containers_for_bash/data:/data --volume /home/jetsonorinnx/jetson-containers/data:/data2 -v /etc/localtime:/etc/localtime:ro -v /etc/timezone:/etc/timezone:ro --device /dev/snd -e PULSE_SERVER=unix:/run/user/1000/pulse/native -v /run/user/1000/pulse:/run/user/1000/pulse --device /dev/bus/usb -e DISPLAY=:1 -v /tmp/.X11-unix/:/tmp/.X11-unix -v /tmp/.docker.xauth:/tmp/.docker.xauth -e XAUTHORITY=/tmp/.docker.xauth --device /dev/video0 --device /dev/video1 --device /dev/i2c-0 --device /dev/i2c-1 --device /dev/i2c-2 --device /dev/i2c-4 --device /dev/i2c-5 --device /dev/i2c-7 --device /dev/i2c-9 -v /run/jtop.sock:/run/jtop.sock --name jetson_container_20250123_144210 dustynv/l4t-pytorch:r36.2.0 bash -c 'echo "Chemin absolu actuel : $(pwd)"; ls; cd /data2/kled; echo "Contenu de /data2/kled :"; ls; cat launch.sh; /data2/kled/launch.sh' #bash ./data2/kled/launch.sh 


#jetsonorinnx@jetsonorinnx-desktop:~$ docker run --runtime nvidia -it --network=host --volume /home/jetsonorinnx/jetson-containers/data:/data2 dustynv/l4t-pytorch:r36.2.0 bash ./data/kled/launch.sh 


# Affiche le chemin absolu du répertoire courant
# echo "Le chemin absolu actuel est : $(pwd)"
# ./data2/kled/launch.sh
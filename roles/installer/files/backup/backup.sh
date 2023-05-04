#!/bin/bash

# Title         : backup.sh
# Description   : Realiza una copia de seguridad con duplicity en el directorio indicado
# Author        : Veltys
# Date          : 2023-02-14
# Version       : 2.1.0
# Usage         : sudo bash backup.sh | sudo ./instalador.sh | instalar en la crontab del superusuario
# Notes         : Es necesario ser superusuario para su correcto funcionamiento


fecha="$(date +'%d de %m de %Y a las %H:%M')"
log_file='/var/log/duplicity.log'


if [ ! -f '/etc/backup' ]; then
	echo "ERROR: El intento de copia de seguridad de $fecha ha fracasado debido a que no se encuentra el archivo de configuración" >> "$log_file"
else
	source /etc/backup

	if ! mountpoint -q "${montaje}/"; then
		echo "ERROR: El intento de copia de seguridad de $fecha ha fracasado debido a que el dispositivo de destino no estaba montado" >> "$log_file"
	else
		duplicity --no-encryption --full-if-older-than 1M --exclude /media --exclude /mnt --exclude /proc --exclude /run --exclude /sys --exclude /tmp --exclude /var/lib/lxcfs / "file://${montaje}/${ruta}" >> "$log_file"
	fi
fi

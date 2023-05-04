#!/bin/bash

# Title         : clean_old_backups.sh
# Description   : Elimina copias de seguridad de duplicity anteriores a un tiempo dado
# Author        : Veltys
# Date          : 2023-03-14
# Version       : 2.1.0
# Usage         : sudo bash clean_old_backups.sh | sudo ./clean_old_backups.sh | instalar en la crontab del superusuario
# Notes         : Es necesario ser superusuario para su correcto funcionamiento


fecha="$(date +'%d de %m de %Y a las %H:%M')"
log_file='/var/log/duplicity.log'


if [ ! -f '/etc/backup' ]; then
	echo "ERROR: El intento de limpieza de las copias de seguridad de $fecha ha fracasado debido a que no se encuentra el archivo de configuración" >> "$log_file"
else
	source /etc/backup

	if ! mountpoint -q "${montaje}/"; then
		echo "ERROR: El intento de limpieza de las copias de seguridad de $fecha ha fracasado debido a que el dispositivo de destino no estaba montado" >> "$log_file"
	else
		duplicity remove-older-than "${antiguedad}" --force "file://${montaje}/${ruta}" >> "$log_file"
	fi
fi
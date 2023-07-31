#!/bin/bash

# Title         : dynamic_dns_updater.sh
# Description   : Updates given OVH dynamic DNS servers
# Author        : Veltys
# Date          : 2023-07-31
# Version       : 2.1.0
# Usage         : sudo bash dynamic_dns_updater.sh | sudo ./dynamic_dns_updater.sh
# Notes         : It is recommended that it be called through crontab


if [ ! -f '/etc/dynamic_dns_updater' ]; then
	echo "ERROR: El intento de copia de seguridad de $fecha ha fracasado debido a que no se encuentra el archivo de configuración" >> "$log_file"
else
	source /etc/dynamic_dns_updater

	if ! "$log"; then
		log_file='/dev/null'
	fi

	# Update IP
	for host in "${hosts[@]}"; do
		echo "$(date), $host: $(curl --user "$user:$password" "${url}&hostname=${host}")" >> "$log_file"
	done
fi

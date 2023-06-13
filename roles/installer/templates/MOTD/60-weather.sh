#!/bin/sh

# Title         : 60-weather.sh
# Description   : Muestra el tiempo en el MOTD
# Author        : Veltys
# Date          : 2023-03-22
# Version       : 2.0.1
# Usage         : (llamado al iniciar sesión, si está correctamente instalado)
# Notes         : Es necesaria una terminal de 256 colores para apreciar el dibujo ASCII adecuadamente


cache=/tmp/weather.cache

command="curl \"es.wttr.in/{{ item.location | default('') }}?0&m\""

exptime=21600 # 6 (horas) * 60 (minutos) * 60 (segundos)

export TERM=xterm-256color

if [ ! -f "$cache" ] || [ $(date +%s) -ge $(( $(stat -c %Y "$cache" 2> /dev/null || 0) + exptime )) ]; then
	eval "$command" > "$cache"
fi

cat "$cache"

echo

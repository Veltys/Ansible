#!/bin/sh

# Title         : 80-updates-available.sh
# Description   : Muestra las actualizaciones pendientes de instalar en el MOTD
# Author        : Veltys
# Date          : 2023-03-22
# Version       : 1.0.2
# Usage         : (llamado al iniciar sesión, si está correctamente instalado)
# Notes         : 


cache=/tmp/updates-available.cache

command="echo \"Hay \$(apt-get --just-print upgrade 2>&1 | perl -ne 'if (/Inst\s([\w,\-,\d,\.,~,:,\+]+)\s\[[\w,\-,\d,\.,~,:,\+]+\]\s\([\w,\-,\d,\.,~,:,\+]+\)? /i) {print "$1\n"}' | wc -l) paquetes no actualizados\""

exptime=86400 # 1 día = 24 (horas) * 60 (minutos) * 60 (segundos)

if [ ! -f "$cache" ] || [ $(date +%s) -ge $(( $(stat -c %Y "$cache" 2> /dev/null || 0) + exptime )) ]; then
	eval "$command" > "$cache"
fi

cat "$cache"

echo

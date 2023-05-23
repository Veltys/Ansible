#!/bin/bash

# Title         : 50-custom-motd.sh
# Description   : Muestra un MOTD personalizado para Raspberries Pi
# Author        : Veltys
# Date          : 2023-03-22
# Version       : 3.0.2
# Usage         : (llamado al iniciar sesión, si está correctamente instalado)
# Notes         : Es necesaria una terminal de 256 colores para apreciar el dibujo ASCII adecuadamente


export TERM=xterm-256color


let upSeconds="$(/usr/bin/cut -d. -f1 /proc/uptime)"
let secs=$((upSeconds%60))
let mins=$((upSeconds/60%60))
let hours=$((upSeconds/3600%24))
let days=$((upSeconds/86400))
UPTIME=$(printf "%d días, %02dh%02dm%02ds" "${days}" "${hours}" "${mins}" "${secs}")


MEMFREE=$(grep MemFree /proc/meminfo | awk {'print $2'})
MEMTOTAL=$(grep MemTotal /proc/meminfo | awk {'print $2'})


SDUSED=$(df -h | grep 'dev/root' | awk '{print $3}' | xargs)
SDAVAIL=$(df -h | grep 'dev/root' | awk '{print $4}' | xargs)


# get the load averages
read one five fifteen rest < /proc/loadavg


ips=( $(ip a | grep global | awk '{print $2}' | cut -f1 -d/) )

declare ips_txt

for ip in "${ips[@]}"; do
	ips_txt="${ips_txt}, ${ip}"
done

ips_txt=${ips_txt:2}


ip_cache=/tmp/ip_ext.cache
ip_command="wget -q -O - https://myip.veltys.es/ | tail"
exptime=86400 # 1 día = 24 (horas) * 60 (minutos) * 60 (segundos)

if [ ! -f "$ip_cache" ] || [ $(date +%s) -ge $(( $(stat -c %Y "${ip_cache}" 2> /dev/null || 0) + exptime )) ]; then
	eval "$ip_command" > "$ip_cache"
fi

# ip_ext=$(wget -q -O - https://myip.veltys.es/ | tail)
ip_ext=$(cat "$ip_cache")


DARKGREY="$(tput sgr0 ; tput bold ; tput setaf 0)"
RED="$(tput sgr0 ; tput setaf 1)"
GREEN="$(tput sgr0 ; tput setaf 2)"
BLUE="$(tput sgr0 ; tput setaf 4)"
NC="$(tput sgr0)" # No Color


echo "${GREEN}
   .~~.   .~~.    $(date +"%A, %e %B %Y, %r")
  '. \ ' ' / .'   $(uname -srmo)${RED}
   .~ .~~~..~.
  : .~.'~'.~. :   ${DARKGREY}Tiempo en línea..........: ${BLUE}${UPTIME}${RED}
 ~ (   ) (   ) ~  ${DARKGREY}Memoria..................: ${BLUE}${MEMFREE}kB (libre) / ${MEMTOTAL}kB (total)${RED}
( : '~'.~.'~' : ) ${DARKGREY}Uso de disco.............: ${BLUE}${SDUSED} (usado) / ${SDAVAIL} (libre)${RED}
 ~ .~ (   ) ~. ~  ${DARKGREY}Cargas de trabajo........: ${BLUE}${one}, ${five}, ${fifteen} (1, 5, 15 min)${RED}
  (  : '~' :  )   ${DARKGREY}Procesos en ejecución....: ${BLUE}$(ps ax | wc -l | tr -d " ")${RED}
   '~ .~~~. ~'    ${DARKGREY}Direcciones IP...........: ${BLUE}${ips_txt} y ${ip_ext}${RED}
       '~'        ${DARKGREY}Temperatura del sistema..: ${BLUE}$(/usr/bin/vcgencmd measure_temp | sed -r -e "s/^temp=([0-9]*)\.([0-9])'C$/\1,\2 C/")${NC}
"

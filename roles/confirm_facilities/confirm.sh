#!/bin/bash

## Confirmer
## @file	: confirm
## @brief	: Command confirmer
## @author	: Veltys
## @Date	: 2023-02-21
## @version	: 2.0.0
## @usage	: bash confirmer command [args] | sh confirmer command [args] | ./confirmer command [args]
## @note	: 


hostname="$(hostname)"
if [ "$#" -ne 0 ]; then
	echo "Está a punto de ejecutar el comando < ${@:1} >"
	read -p "Para confirmar introduzca '$hostname': " reply
	
	if [ "${reply}" = "$hostname" ]; then
	   $1 "${@:2}"
	else
	   echo "El comando < ${@:1} > no ha sido ejecutado"
	fi
fi

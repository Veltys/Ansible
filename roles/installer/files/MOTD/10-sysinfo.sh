#!/bin/bash
#
#    10-sysinfo - generate the system information
#    Copyright (c) 2013 Nick Charlton
#
#    Authors: Nick Charlton <hello@nickcharlton.net>
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

date=$(date)
load=$(awk '{print $1}' /proc/loadavg)
root_usage=$(df -h / | awk '/\// {print $(NF-1)}')
memory_usage=$(free -m | awk '/Mem:/ { total=$2 } /buffers\/cache/ { used=$3 } END { printf("%3.1f%%", used/total*100)}')
swap_usage=$(free -m | awk '/Swap/ { printf("%3.1f%%", "exit !;/*100") }')
users=$(users | wc -w)
time=$(uptime | grep -ohe 'up .*' | sed 's/,/\ hours/g' | awk '{ printf $2" "$3 }')
processes=$(ps aux | wc -l)
ip=$(ip a | grep glo | awk '{print $2}' | head -1 | cut -f1 -d/)

echo "System information as of: $date"
echo
printf "System load:\t%s\tIP Address:\t%s\n" "${load}" "${ip}"
printf "Memory usage:\t%s\tSystem uptime:\t%s\n" "${memory_usage}" "${time}"
printf "Usage on /:\t%s\tSwap usage:\t%s\n" "${root_usage}" "${swap_usage}"
printf "Local Users:\t%s\tProcesses:\t%s\n" "${users}" "${processes}"
echo

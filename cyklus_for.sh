#!/bin/bash
#
# Script to print numbers from 1 to 99 with a message
for ((a = 1; a < 100; a++)); do
	echo $a x povedane
done
#
#
# vypíšem súbory v adresári /tmp
POCET=0
echo -e "\na teraz vypíšem súbory v adresári /tmp\n"
for file in /tmp/*; do
	echo -e "našiel som $file"
	((POCET++))
done
echo -e "\n\tNapočítal som $POCET súborov.\n"
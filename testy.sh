#!/bin/bash
# Testovanie existencie súborov pomocou rôznych príkazov a operátorov
# /etc/kbash neexistuje, ale /etc/passwd existuje a je regulárnym súborom
#
echo -e "\ntest 1\nbudeme testovať či existuje regulárny súbor /bin/bash teda -f"
[ -f /bin/bash ]
{
	echo -e "\nnávratová hodnota je $? - a nula znamená TRUE"
}
#
#
#
echo -e "\ntest 2\nbudeme testovať či existuje súbor kbash teda -e  alebo regulárny súbor /etc/passwd teda -f"
[ -e /bin/kbash ] || [ -f /etc/passwd ]
{
	echo -e "\nnávratová hodnota je $? - a nula znamená TRUE"
}
#
#
#
echo -e "\ntest 3\nbudeme testovať či existuje súbor kbash teda -e  a regulárny súbor /etc/passwd teda -f"
test -e /bin/kbash && test -f /etc/passwd
{
	echo -e "\nnávratová hodnota je $? - a nula znamená TRUE"
}
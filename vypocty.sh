#!/usr/bin/env bash
# Vypočítať základné operácie s číslami v bash
#
A=5
B=4
C=1.2
D=3.5
echo a + b=$A + $B=$((A + B))
echo a - b=$A - $B=$((A - B))
# výpočet násobenia s desatinnými číslami pomocou bc
echo "c + d=$C + $D=$(echo "scale=2; $C+$D" | bc)"
#
echo
echo "scale=5;1.18*1.12"|bc
echo bez úvodnej nuly
echo "scale=5;1 / 5" | bc 
echo aj so zobrazením úvodnej nuly
echo "scale=5;1 / 5" | bc | awk '{printf "%0.2f\n", $1}'
#
echo
echo 128 zobrazené binárne
echo "obase=2;128" |bc
echo
echo 11110000 zobrazené v hexa
echo "obase=16;ibase=2;11110000"|bc
# Alebo sin 180°- po prevode na radiány 3.1415​
echo
echo Alebo sin 180°- po prevode na radiány 3.1415​
echo "scale=5;s(3.1415)" |bc -l
echo "scale=5;s(4*a(1))" |bc -l
echo
echo odmocnina zo 144
echo "sqrt(144)" |bc
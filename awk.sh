#!/bin/bash
# Various awk command examples on osoby.txt and /etc/passwd
awk '{print;}' osoby.txt
awk '/joz/' osoby.txt 
awk '/an/' osoby.txt 
awk '/\<an/' osoby.txt
awk '/ an/' osoby.txt
awk -F: '/student/{print $1,$6}' /etc/passwd
ps aux |awk '{print $1,$2}'
awk '{print $2;}' osoby.txt 
awk '{print $2,"\t",$4;}' osoby.txt 
awk '{print $2,$NF;}' osoby.txt 
awk '{print NR " - " toupper($2) }' osoby.txt
awk 'BEGIN {print "MENO\tVEK";} {print $2,"\t", $4;} END {};' osoby.txt 
awk '{print $2,$4;}' osoby.txt 

awk '$4>23' osoby.txt 
awk '$3=="z"' osoby.txt 

awk '{suma += $4; pocet ++;} END {print "Suma:", suma, "Počet", pocet, "Priemer:",suma/pocet;}' osoby.txt

awk -F: '{print $1}' /etc/passwd | sort
cat osoby.txt | sort -k 4
awk '{print;}' osoby.txt | sort -k 4
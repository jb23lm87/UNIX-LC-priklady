#!/usr/bin/bash
# Tento skript vytvorí nový soubor s názvom "nazov_2026-06-11.txt" v aktuálnom adresári.
touch "nazov_$(date +%F).txt"
#
# vypočítaj hash všetkých súborov v aktuálnom adresári a uloží ich do súboru "hashy.txt"
# potom skopíruj tento súbor do súboru "hashy_2026-06-11.txt"
# vykonaj zmenu v súbore "hashy_2026-06-11.txt" (napr. pridaj alebo odstráň nejaký súbor)
# porovnaj súbory "hashy.txt" a "hashy_2026-06-11.txt" a vypíš rozdiely do súboru "rozdiely.txt"
# zobraz obsah súboru "rozdiely.txt" na obrazovke
#
sha256sum * > hashy.txt
cp hashy.txt "hashy_$(date +%F).txt"
echo "Pridaj nejaký súbor alebo sprav zmenu hash" >> "hashy_$(date +%F).txt"
diff hashy.txt "hashy_$(date +%F).txt" > rozdiely.txt
echo "Zistené rozdiely:"
cat rozdiely.txt
# to isté s náhodným obsahom 10 vytvorených súborov
# vytvor 10 súborov s názvom "subor1.txt", "subor2.txt", ..., "subor10.txt", vlož náhodný obsah
# vygeneruj náhodné číslo medzi 1 a 1000, ktoré určí veľkosť súboru v bajtoch
# potom vypočítaj ich hash a ulož ich do súboru "hashy_subory1-10.txt"
for i in {1..10}; do
    size=$((RANDOM % 1000 + 1))
    dd if=/dev/urandom of="subor$i.txt" bs=1 count=$size &> /dev/null
done
sha256sum subor[1-9]*.txt > hashy_subory1-10.txt
echo "Hashy súborov subor1.txt až subor10.txt uložené v hashy_subory1-10.txt"
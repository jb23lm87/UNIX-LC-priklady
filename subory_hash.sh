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
cp hashy.txt hashy_$(date +%F).txt
echo "Pridaj nejaký súbor alebo sprav zmenu hash" >> hashy_$(date +%F).txt
diff hashy.txt hashy_$(date +%F).txt > rozdiely.txt
echo "Zistené rozdiely:"
cat rozdiely.txt

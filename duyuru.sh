#!/bin/bash
# duyuru.sh — duyurular.txt dosyasından kulübün sayfasını üretir
KAYNAK="$HOME/kulup-sunucu/duyurular.txt"
SAYFA="/srv/kulup/index.html"
SAYI=$(cat "$KAYNAK" | wc -l)
ZAMAN=$(date)
echo "<html><head><meta charset='utf-8'><title>Bilişim Kulübü</title></head><body>" > "$SAYFA"
echo "<h1>Bilişim Kulübü Duyuruları</h1>" >> "$SAYFA"
echo "<p>Son güncelleme: $ZAMAN · $SAYI duyuru</p><ul>" >> "$SAYFA"
while read -r SATIR; do
    echo "<li>$SATIR</li>" >> "$SAYFA"
done < "$KAYNAK"
echo "</ul></body></html>" >> "$SAYFA"

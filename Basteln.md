![Logo](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/images/logo-ffm.png)  

# ToDo

---

### Backend

- [ ] Überlegen, ob wir das Rauschen des Netzes messen können. Wegen Netz vor und nach der neuen Stable.
- [ ] ARP-Pakete schwirren durch das Netz -> Test auf einem Knoten mit: "batctl tcpdump bat0 2>&1 | grep ARP"  
siehe auch https://forum.freifunk.net/t/ffdus-bitte-keine-portscans-auf-16/14469
- [x] Das Datum auf den Routern stimmt mal wieder nicht
- [ ] Suopernode verabschieden sich 1-5 mal täglich und erhalten neue MAC und IPv6 adresse

### Map
- [x] Routerstatistiken wieder aktivieren
- [ ] Router-Statistiken auf der Map etwas sortieren (z.B. Traffic weiter nach oben)
- [ ] Offline-Knoten verschwinden erst nach 3 Monaten von der Map
- [ ] Supernodes tachen permanent als neue Knoten auf der Map auf (1-5 mal am Tag). Alle Offline Supernodes verschwinden erst nach 3 Monaten aus der Statistik.
- [ ] Die Anzahl der Gesamtknoten (online wie offline) stimmt hinten und vorne nicht.
- [ ] Map zeigt offline Knoten noch mit ihrem letzen Status im Grafen als online an (zum Glück nur, wenn sie in einem Mesh hängen).
- [ ] Die Map zeigt letztendlich zuviele nicht korrekte Informationen an. Das mach sie unglaubwürdig.

### Firmware 
 - [ ] LEDE mal in angriff nehmen.
 
### Doku

- [ ] Die Wiki-Seite überprüfen und aktualisieren (http://wiki.freifunk.net/Freifunk_Frankfurt)  
- [ ] Frankfurt-ip-Konzept überprüfen, aktualisieren oder neu Aufsetzen. (http://wiki.freifunk.net/Frankfurt-ip-Konzept)



### Sonstiges

- [ ] http://www.freifunk-karte.de zeigt eine riesen Lücke über Frankfurt an


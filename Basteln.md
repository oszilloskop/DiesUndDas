![Logo](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/logo-ffm.png)  

# ToDo

---

### Backend
- [ ] fastd2 hängt böse. Verbindung möglich, aber keine Durchsatz möglich
- [ ] Port 10001 und 10002 auf allen Supernodes öffen 
- [ ] NTP-Server: Ist der Zeitserver auch für neuere Firmware erreichbar (unterschiedliche IPv6 Präfixe)
- [x] fastd4 hängt böse. Verbindung möglich, aber keine mesh-VPN Anzeige (also kein Durchsatz)


### Firmware 


- [ ] Firmware: Welche Luci-Module sollen für den Experten-Modus eingebunden werden?  
- [ ] Downloadserver: Jenkins Hol-Skript anpassen (wg. Modules etc.)  
- [ ] Downloadserver: Wie gehen wir mit Dateien alter Firmwareversionen um? 
- [ ] Wollen wir einen **Broken**-Branch?
- [x] Firmware: ebtables Regeln anpassen 
- [x] Ich müßte mal in den Jenkins Deploy-Ordner schauen.
- [x] Gibt es einen PGP-Key auf dem Jenkinsserver? (Nein)
- [x] Firmware: Wir müssen über 'stable < test' reden.


### Doku

- [ ] Die Wiki-Seite überprüfen und aktualisieren (http://wiki.freifunk.net/Freifunk_Frankfurt)
- [ ] Frankfurt-ip-Konzept überprüfen und aktualisieren (http://wiki.freifunk.net/Frankfurt-ip-Konzept)

### Sonstiges

- [ ] Grafana zeigt nur Daten für einen Tag an. Das ist unschön.
- [ ] Die Api-Datei sollte aktualisiert werden, HTTPS://, Jenkins raus, Kanonensteppel raus, IPv6 noch korrekt? (http://api-viewer.freifunk.net/frankfurt_am_main.html http://freifunk.net/api-generator)
- [x] http://www.freifunk-karte.de zeigt ein Loch über Frankfurt
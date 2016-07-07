![Logo](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/images/logo-ffm.png)  

# ToDo

---

### Backend

[ ] NTP-Server 2.ntp. und 3.ntp. bitte im DNS aufnehmen  
[?] NTP-Server: Ist der Zeitserver auch für neuere Firmware erreichbar (unterschiedliche IPv6 Präfixe)  
[?] Große und kleine MTUs Unterstützung auf den Supernode / FastdInstanzen einrichten.  
[x] fastd4 hängt böse. Verbindung möglich, aber keine mesh-VPN Anzeige (also kein Durchsatz)  
[x] fastd2 hängt böse  
[x] fastd6 hängt  
[x] Port 10001 und 10002 auf allen Supernodes öffen (Firewall)  

### Firmware 

[ ] Wollen wir einen **Broken**-Branch?  
[ ] Eine neue "Stable" bauen  
[x] Eine neue "Test" bauen  
[x] Firmware: Welche Luci-Module sollen für den Experten-Modus eingebunden werden?  
[x] Downloadserver: Jenkins Hol-Skript anpassen (wg. Modules etc.)  
[x] Downloadserver: Wie gehen wir mit Dateien alter Firmwareversionen um? 
[x] Firmware: ebtables Regeln anpassen  
[x] Ich müßte mal in den Jenkins Deploy-Ordner schauen  
[x] Gibt es einen PGP-Key auf dem Jenkinsserver? (Nein)  
[x] Firmware: Wir müssen über 'stable < test' reden  


### Doku

[ ] Doku-Beispiel: [MWU Gateway Doku](http://gluon-gateway-doku.readthedocs.io/de/latest/index.html)  
[ ] Doku-Beispiel: [Eulenfunk](http://eulenfunk.readthedocs.io/en/stable/)  
[ ] Wie funktioniert readthedocs.io in Kombination mit Github?  
[ ] Die Wiki-Seite überprüfen und aktualisieren (http://wiki.freifunk.net/Freifunk_Frankfurt)  
[ ] Frankfurt-ip-Konzept überprüfen, aktualisieren oder neu Aufsetzen. (http://wiki.freifunk.net/Frankfurt-ip-Konzept)  



### Sonstiges


[ ] Die Api-Datei sollte aktualisiert werden, HTTPS://, Jenkins raus, Kanonensteppel raus, IPv6 noch korrekt? (http://api-viewer.freifunk.net/frankfurt_am_main.html http://freifunk.net/api-generator)  
[ ] http://www.freifunk-karte.de verlinkt nicht korrekt auf unsere Community Web-Seite  
[x] Umgang mit den FFM-Repositories "Packages" und "Packages-1" überdenken  
[x] Grafana zeigt nur Daten für einen Tag an. Das ist unschön  
[x] http://www.freifunk-karte.de zeigt ein Loch über Frankfurt  

### FirmwareDonload Anforderungen

[ ] Sollte nicht auf dem gleichen Server laufen auf dem auch die Firmware liegt  
[ ] Bestimmung der unten genannten Auswahlmöglichkeiten zur Laufzeit  
[ ] Design wie Webseite  
[ ] Einbindung in Wordpress  
[ ] Layout vertikal  
[ ] Aliases (wegen Router Falschbenennungen)  
[ ] Auswahl Hersteller  
[ ] Auswahl Routername  
[ ] Auswahl Hardwarerevision (neueste als default)  
[ ] Auswahl Branch (wenn möglich stable als default)  
[ ] Download Buttom   
[ ] Anzeige Routergrafik Vorder-/Hinterseite  

![Design](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/images/fw-downloader-design-01.png)  

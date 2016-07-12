![Logo](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/images/logo-ffm.png)  

# ToDo

---

### Backend

- [ ] NTP-Server 2.ntp. und 3.ntp. bitte im DNS aufnehmen  
- [ ] NTP-Server: Ist der Zeitserver auch für neuere Firmware erreichbar? (unterschiedliche IPv6 Präfixe)  
- [ ] Große und kleine MTUs Unterstützung auf den Supernode / FastdInstanzen einrichten  
- [x] fastd4 hängt böse. Verbindung möglich, aber keine mesh-VPN Anzeige (also kein Durchsatz)  
- [x] fastd2 hängt böse  
- [x] fastd6 hängt  
- [x] Port 10001 und 10002 auf allen Supernodes öffen (Firewall)  

### Firmware 

- [ ] Signieren der neuen Test v1.10.4-test-96
- [ ] Wollen wir einen **Broken**-Branch?  
- [ ] Eine neue "Stable" bauen  
- [x] Eine neue "Test" bauen  
- [x] Firmware: Welche Luci-Module sollen für den Experten-Modus eingebunden werden?  
- [x] Downloadserver: Jenkins Hol-Skript anpassen (wg. Modules etc.)  
- [x] Downloadserver: Wie gehen wir mit Dateien alter Firmwareversionen um? 
- [x] Firmware: ebtables Regeln anpassen  
- [x] Ich müßte mal in den Jenkins Deploy-Ordner schauen  
- [x] Gibt es einen PGP-Key auf dem Jenkinsserver? (Nein)  
- [x] Firmware: Wir müssen über 'stable < test' reden  


### Doku

- [ ] Kommen [readthedocs](https://docs.readthedocs.io/en/latest/) / [sphinx](http://www.sphinx-doc.org/en/stable/) für uns in Betracht?
  - [ ] Doku-Beispiel: [MWU Gateway Doku](http://gluon-gateway-doku.readthedocs.io/de/latest/index.html)  
 - [ ] Doku-Beispiel: [Eulenfunk](http://eulenfunk.readthedocs.io/en/stable/)  
 - [ ] Wie funktioniert readthedocs.io in Kombination mit Github?  
- [ ] Die Wiki-Seite überprüfen und aktualisieren (http://wiki.freifunk.net/Freifunk_Frankfurt)  
- [ ] Frankfurt-ip-Konzept überprüfen, aktualisieren oder neu Aufsetzen. (http://wiki.freifunk.net/Frankfurt-ip-Konzept)  



### Sonstiges
- [ ] Hopglass als einzige Map aktivieren. Was muß gemacht werden?
- [ ] Die JSON-API-Datei sollte aktualisiert werden (http://api-viewer.freifunk.net/frankfurt_am_main.html http://freifunk.net/api-generator) 
  - [ ] Alle Links auf HTTPS:// setzen
  - [ ] Ist die IPv6 noch korrekt?
  - [ ] Muß DNS-Eintrag aktualisiert werden?
  - [ ] Contact bearbeiten (IRC, Jabber ?)
  - [ ] Jenkins raus, 
  - [ ] Workaround für http://www.freifunk-karte.de überprüfen lassen (Achtung: Mapviewer vs. Hopglass) 
  - [ ] Mal schauen, ob es neue API Felder gibt. Diese ggf. mit aufnehmen.
- [ ] http://www.freifunk-karte.de verlinkt nicht korrekt auf unsere Community Web-Seite  
- [x] Umgang mit den FFM-Repositories "Packages" und "Packages-1" überdenken  
- [x] Grafana zeigt nur Daten für einen Tag an. Das ist unschön  
- [x] http://www.freifunk-karte.de zeigt ein Loch über Frankfurt  


---


### Firmware Download Anforderungen

08.07.2016

- [ ] Sollte nicht auf dem gleichen Server laufen müssen, auf dem auch die Firmware liegt  
- [ ] Design wie Frankfurter Webseite  
- [ ] Layout vertikal 
- [ ] Einbindung in Wordpress wäre toll  
- [ ] Bestimmung aller Auswahlmöglichkeiten zur Laufzeit in Abhängigkeit der wirklich angebotenen Firmware-Dateien   
  - [ ] Auswahl Hersteller  
  - [ ] Auswahl Routername  (ggf. Herstellerbezeichnung entfernen)
  - [ ] Auswahl Hardwarerevision (falls mehrere vorhanden, ältestes anzeigen)  
  - [ ] Auswahl Branch (wenn möglich stable als default)   
  - [ ] Auswahl Factory / Sysupgrade
  - [ ] Die Auswahlstruktur so aufbauen, das weitere Auswahlmöglichkeiten leicht hinzufügbar sind (z.B. Batman/Babel, Fastd/L2TP, Frankfurt/Offenbach/Taunus oder ähnliches)
- [ ] Anzeige Routergrafik Vorder-/Hinterseite anzeigen sobald Hersteller und Modell ausgewählt wurden.
- [ ] Download Button (nur aktiv, wenn eine Firmware ausgewählt wurde)  
- [ ] Routernamen-Aliases ermöglichen (wegen Router Falschbenennungen)

**Beispiel:**  

![Design](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/images/fw-downloader-design-01.png)  

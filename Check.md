## Frankfurter Firmware-Release Checkliste

### Firmwaren
- [ ] Dev
- [ ] Test
- [ ] Stable
- [ ] Benennung des Firmware-Releases

### Vorarbeiten
- [ ] Bekanntgabe der geplanten site.conf/site.mk auf Admin-Liste oder IRC
- [ ] Bauen der Firmware mit allen zur Zeit verfügbaren Targets
- [ ] Erfolgreicher Aufruf 'date' auf neu gestartetem Test-Router (Backbone-NTP-Check)
- [ ] Erfolgreicher Aufruf 'autoupdater' auf Test-Router (Backbone-DNS-Check)  

### Sysupgrade 
- [ ] Aufruf Konfigmodus mittels unterschiedlicher Web-Browser (z.B. Edge, Chromium, Firefox, Safari)
  - [ ] Texte, Inhalte und Eingabenübernahme im Konfigmodus korrekt
- [ ] Ist Autoupdate entsprechend gesetzt/vorhanden (Konfig-Tab)
- [ ] Ist Updatebranch korrekt gesetzt (Konfig-Tab)
- [ ] Ggf. korrekter Autoupdater Branch-Übernahme bei verwendetetm Package "use-site-conf-branch"
- [ ] Korrekte Revision-Information Firmware/Gluon (Konfig-Tab)
- [ ] Speicherung Konfiguration (inkl. Reboot)
- [ ] Aufruf Statusseite
  - [ ] 2a06:xyz innerhalb vom Freifunknetz
  - [ ] fddd:xyz innerhalb vom Freifunknetz
  - [ ] 2a06:xyz ausserhalb vom Freifunknetz
- [ ] Ist Sichtung auf Map vorhanden 
- [ ] SSH Login
  - [ ] innerhalb vom Freifunknetz
  - [ ] ausserhalb vom Freifunknetz
- [ ] 'nodeinfo' - korrekte Inhalts-Ausgabe
- [ ] 'help' - korrekte Inhalts-Ausgabe
- [ ] WLAN-Kanalübernahme nach Sysupgrade (2,4GHz und 5GHz)
- [ ] Meshverhalten generell
- [ ] Clientverbindung (IPv4, IPv6, DNS)
- [ ] OFF/ON Check
  - [ ] Mesh-VPN
  - [ ] WLAN-mesh
  - [ ] MoL
  - [ ] MoW
  - [ ] Client WLAN
  - [ ] Client LAN
  - [ ] WLAN
- [ ] WLAN-Taster - Funktions-Chek
- [ ] Offline-SSID
  - [ ] Direkt nach Reboot
  - [ ] Im Betrieb
- [ ] opkg
  - [ ] 'opkg update'
  - [ ] opkg-Installation eines Testpackages (z.B. htop)
- [ ] Sysupgrade nur nach korrekter Anzahl der geforderten Manifest-Signaturen 
- [ ] Sysupgrade gefolgt nach Sysupgrade
- [ ] Autoupdater (Nachtzeit, selbsständig durch Router)


### Firstboot
- [ ] 'firstboot' absetzen
- [ ] Weiter mit dem komplettem Sysupgrade-Check

### Factory
- [ ] Factory-Installation
- [ ] Weiter mit dem komplettem Sysupgrade-Check

### Nacharbeiten
- [ ] Repo-Tagging 
  - [ ] Verwendeter Frankfurter Gluon-Branche
  - [ ] Verwendeter Frankfurter Site-Branche
- [ ] Dokumentation  Release-Änderungshistorie
- [ ] Release- Bekanntgabe
  - [ ] Auf Admin-Liste
  - [ ] Auf User-Liste

### Sonstiges
- [ ] Listung im Frankfurter FirmwareSelector
- [ ] Checkliste abgearbeitet auf mehreren unterschiedlichen Router-Modellen
- [ ] DL-Server
  - [ ] Upload der Firmware auf DL-Server
  - [ ] Backup der vormaligen Firmware-Version und Modulen korrekt durchgeführt

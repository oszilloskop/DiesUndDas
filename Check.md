## Frankfurter Firmware-Release Vorab-Checkliste
- [ ] Dev
- [ ] Test
- [ ] Stable
- [ ] Benennung der Firmware-Release-Version

### Vorarbeiten
- [ ] Bekanntgabe der verwendeten site.conf/site.mk auf Admin-Liste oder IRC
- [ ] Erfolgreicher Aufruf 'date' auf neu gestartetem Test-Router (Backbone-NTP-Check)
- [ ] Erfolgreicher Aufruf 'autoupdater' auf Test-Router (Backbone-DNS-Check)

### Sysupgrade 
- [ ] Aufruf Konfigmodus mittels unterschiedlicher Web-Browser (z.B. Edge, Chromium, Firefox, Safari)
  - [ ] Texte, Inhalte und Eingabenübernahme im Konfigmodus korrekt
- [ ] Ist Autoupdate entsprechend gesetzt/vorhanden (Konfig-Tab)
- [ ] Ist Updatebranch korrekt gesetzt (Konfig-Tab)
- [ ] Ggf. korrekter Autoupdater Branch-Übernahme bei verwendetetm Package "use-site-conf-branch"
- [ ] Revision-Information Firmware/Gluon (Konfig-Tab)
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
  - [ ] Wifi-mesh
  - [ ] MoL
  - [ ] MoW
  - [ ] Client Wifi
  - [ ] Client LAN
  - [ ] WLAN
- [ ] Wifi-Taster - Funktions-Chek
- [ ] Offline-SSID
- [ ] opkg
  - [ ] 'opkg update'
  - [ ] opkg-Installation eines Testpackages (z.B. htop)
- [ ] Sysupgrade gefolgt nach Sysupgrade
- [ ] Autoupdater (Nachtzeit, selbsständig durch Router)


### Firstboot
- [ ] 'firstboot' absetzen
- [ ] Weiter mit dem komplettem Sysupgrade-Check

### Factory
- [ ] Factory-Installation
- [ ] Weiter mit dem komplettem Sysupgrade-Check

### Nacharbeiten
- [ ] Taggen
  - [ ] Verwendeter Frankfurter Gluon-Branche
  - [ ] Verwendeter Frankfurter Site-Branche
- [ ] Dokumentation Frankfurter Release-Änderungshistorie
- [ ] Release- Bekanntgabe
  - [ ] Auf Admin-Liste
  - [ ] Auf User-Liste

### Sonstiges
- [ ] Listung auf FirmwareSelector
- [ ] Checkliste abgearbeitet auf mehreren unterschiedlichen Router-Modellen

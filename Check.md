## Frankfurter Firmware-Release Checkliste
- [ ] Dev
- [ ] Test
- [ ] Stable
- [ ] Benennung der Release-Version

### Vorarbeiten
- [ ] Bekanntgabe der entsprechenden site.conf/site.mk auf Admin-Liste oder IRC

### Sysupgrade 
- [ ] Aufruf Konfigmodus zur Konfig-Überprüfung - mittels unterschiedlicher Web-Browser (z.B. Edge, Chromium, FireFox, Safari)
- [ ] Texte und Inhalte im Konfigmodus
- [ ] Ist Autoupdate entsprechend gesetzt/vorhanden (Konfig-Tab)
- [ ] Ist Updatebranch korrekt gesetzt 
- [ ] Ggf. korrekte Autoupdater Branch-Übernahme bei verwendetetm Package "use-site-conf-branch"
- [ ] Revision-Information (Firmware/Gluon)
- [ ] Speicherung Konfiguration (inkl. Reboot)
- [ ] Aufruf Statusseite innerhalb vom Freifunknetz (2a06:xyz)
- [ ] Aufruf Statusseite innerhalb vom Freifunknetz (fddd:xyz)
- [ ] Aufruf Statusseite ausserhalb vom Freifunknetz (2a06:xyz)
- [ ] Ist Sichtung auf Map vorhanden 
- [ ] SSH Login
- [ ] 'nodeinfo' - korrekte Inhalts-Ausgabe
- [ ] 'help' - korrekte Inhalts-Ausgabe
- [ ] WLAN-Kanalübernahme nach Sysupgrade (2,4GHz und 5GHz)
- [ ] Meshverhalten generell
- [ ] Clientverbindung (IPv4, IPv6, DNS)
- [ ] Mesh-VPN (ON/OFF)
- [ ] Wifi-mesh (ON/OFF)
- [ ] MoL (ON/OFF)
- [ ] MoW (ON/OFF)
- [ ] Client Wifi (ON/OFF)
- [ ] Client LAN (ON/OFF)
- [ ] WLAN (ON/OFF)
- [ ] Wifi-Taster - Funktions-Chek
- [ ] Offline-SSID
- [ ] 'opkg update'
- [ ] opkg - Installation eines Testpackages (z.B. htop)
- [ ] Sysupgrade gefolgt nach Sysupgrade
- [ ] Autoupdater (Nachtzeit, selbsständig durch Router)


### Firstboot
- [ ] 'firstboot' absetzen
- [ ] weiter mit dem komplettem Sysupgrade-Check

### Factory
- [ ] Factoryinstallation
- [ ] weiter mit dem komplettem Sysupgrade-Check

### Nacharbeiten
- [ ] Taggen des verwendetetn Frankfurter Gluon-Branches
- [ ] Taggen des verwendetetn Frankfurter Site-Branches
- [ ] Dokumentation Frankfurter Release-Änderungshistorie
- [ ] Release-Bekanntgabe auf Admin-Liste
- [ ] Release-Bekanntgabe auf User-Liste

### Sonstiges
- [ ] Check Listung auf FirmwareSelector

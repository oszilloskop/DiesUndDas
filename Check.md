## Frankfurter Firmware-Release Checkliste
- [ ] Dev
- [ ] Test
- [ ] Stable
- [ ] Benennung der Release-Version

### Sysupgrade 
- [ ] Aufruf Konfigmodus zur Konfig-Überprüfung
- [ ] Texte und Inhalte im Konfigmodus
- [ ] ist Autoupdate entsprechend gesetzt/vorhanden (Konfig-Tab)
- [ ] Ist Updatebranch korrekt gesetzt 
- [ ] ggf. korrekte Autoupdater Branch-Übernahme bei verwendetetm Package "use-site-conf-branch"
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
- [ ] Taggen des verwendetetn Frankfurter Gluon-Branch
- [ ] Taggen des verwendetetn Frankfurter Site-Branch
- [ ] Dokumentation Änderungshistorie
- [ ] Bekanntgabe auf Admin-Liste
- [ ] Bekanntgabe auf User-Liste

### Sonstiges
- [ ] Check Listungen auf FirmwareSelector

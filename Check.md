### Sysupgrade 
- [ ] Aufruf Konfigmodus zur Konfig-Überprüfung
- [ ] Texte Konfigmodus
- [ ] Autoupdate Konfig-Check
- [ ] Updatebranch 
- [ ] Revisioninformation (FW/Gluon)
- [ ] Sichtung auf Map
- [ ] SSH Login
- [ ] Nodeinfo
- [ ] Kanalübernahme
- [ ] Meshverhalten
- [ ] Mesh-VPN (ON/OFF)
- [ ] Wifi-mesh (ON/OFF)
- [ ] MoL (ON/OFF)
- [ ] MoW (ON/OFF)
- [ ] Client Wifi (ON/OFF)
- [ ] Client LAN (ON/OFF)
- [ ] Wifi-Taster
- [ ] Offline-SSID
- [ ] opkg Testinstallation
- [ ] Sysupgrade nach Sysupgrade
- [ ] Autoupdater (Nachtzeit selbsständig)
- [ ] Autoupdater use-site-conf-branch

### Firstboot
- [ ] 'firstboot'
- [ ] weiter mit dem Sysupgrade-Check

### Factory
- [ ] Factoryinstallation
- [ ] weiter mit dem Sysupgrade-Check

### Sonstiges
- [ ] Check Listungen Firmwarewizard


---
Auffälligkeiten
```
# autoupdater 
Retrieving manifest from http://updates.services.ffffm.net/test/sysupgrade/test.manifest ...
Stopping cron...
Stopping haveged...
Stopping micrond...
Stopping sysntpd...
Stopping gluon-radvd...
Stopping uhttpd...
Stopping sse-multiplexd...
Stopping gluon-respondd...
vm.drop_caches = 3
Downloading image:  4480 / 4480 KiB
Stopping network...
ip: can't find device 'bat0'
autoupdater: warning: execution of /usr/lib/autoupdater/upgrade.d/10stop-network exited with status code 1
vm.drop_caches = 3
Image metadata not found
cat: write error: Broken pipe
cat: write error: Broken pipe
cat: write error: Broken pipe
Saving config files...
Commencing upgrade. Closing all shell sessions.
Connection to 2a06:8187:fbba:1234:16cc:20ff:fe4d:4534 closed by remote host.
Connection to 2a06:8187:fbba:1234:16cc:20ff:fe4d:4534 closed.
```

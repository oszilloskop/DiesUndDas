# Gluon auf UBNT EdgeRouter X, EdgeRouter X-SFP und EdgePoint R6
  
Mit Hilfe dieses Projektes kann ein EdgeRouter X sehr einfach über das Web-GUI der UBNT-Stockfirmware in einen Gluon-Router umgeflasht werden.  
  
Weiterhin wird beschrieben, wie über die Konsole ein EdgeRouter X mit einer bereits aufgespielten Gluon- oder Lede-Firmware auf die UBNT-Stockfirmware zurückgeflasht werden kann.  
  
Die folgenden Anleitungen gelten gleichwertig für die Ubiquiti Router ER-X, ER-X-SFP und EP-R6:
  
  
EdgeRouter X | EdgeRouter X-SFP | EdgePoint R6
:-------------: | :-------------: | :-------------:
![image](https://wiki.openwrt.org/_media/media/ubiquiti/ubiquiti-edgerouter-x.png?w=300&tok=cd9c12 "ER-X")  | ![image](https://wiki.openwrt.org/_media/media/ubiquiti/ubiquiti-edgerouter-x-sfp.png?w=300&tok=afa2d9 "ER-X-SFP")  | ![image](https://wiki.openwrt.org/_media/media/ubiquiti/ubiquiti_edgepoint_r6_ep-r6.png?w=149&tok=74cc15 "EP-R6")

Anmerkung:  
Der EdgeRouter X-SFP und der EdgePoint R6 sind als identisch zu betrachten.  
  
Dieses Projekt stellt ein generisches (Community-unabhängiges) Gluon-initramfs-Factory-Image bereit.  
Es handelt sich bei dem Image um eine abgespeckte Gluon-Version. Das Image ist für alle drei Router-Typen identisch verwendbar.  


## UBNT EdgeRouter X und Gluon
Beim dem Bauen der Gluon-Firmware (aktuell 2017.1.x) fällt aus Router-technischen Gründen kein Factory-Image für den UBNT-EdgeRouter X heraus. Wenn Gluon auf einen EdgeRouter X aufgespielt werden soll, dann muss man bisher auf die [interne serielle Schnittstelle des Routers](http://sector5d.org/openwrt-on-the-ubiquiti-edgerouter-x.html) zurückgreifen, oder man muß sich mit einem [generischen Lede-Image](https://www.freifunk-winterberg.net/die-nutzung-von-ubiquiti-edgerouter-x-als-freifunk-offloader/) aushelfen. Es ist auf jeden Fall immer ein mehrphasiges Vorgehen inkl. Konsolennutzung notwendig.  

### Neuer Lösungsansatz
Folgend wird eine weitere, aber deutlich einfachere Flash-Möglichkeit beschrieben. Ein Community-spezifisches Gluon kann über den Weg des Web-GUI der UBNT-Stockfirmware auf einen EdgeRouter X geflasht werden. Die Prozedur ist mehrphasig.  
  
Das hier downloadbare generische Gluon-Factory-Image bietet dem Nutzer die Möglichkeit, über die Gluon-Web-Konfigseite ein Sysupgrade des Routers durchzuführen (ansonsten ist sie funktionslos).  
  
Mit dem Sysupgrade kann dann ein Gluon-Sysupgrade-Image einer beliebigen Community auf den EdgeRouter X geflasht werden.  
  
![](https://upimg.de/img/bildschirmfoto2_0ywtzy.png)  

---

</br>

# Los geht's: Gluon auf EdgeRouter X flashen
Wenn ein EdgeRouter X mit Gluon geflasht werde soll, dann wird folgendes benötigt:
- Das hier bereitgestellen Gluon-initramfs-Factory-Image: [gluon-ramips-mt7621-ubnt-erx-initramfs-factory.tar](http://)
- Ein Community-spezifisches Gluon-Sysupgrade-Image für den EdgeRouter X  

## Phase 1 - Gluon-Factory über UBNT Web-GUI
- Ein neuer EdgeRouter X hat die feste IP 192.168.1.1, es läuft kein DHCP auf dem Router.  
- Der EdgeRouter X muß über den eth0-Port (WAN) mit einem PC verbunden werden.
- Ein zu verbindender PC muss mit einer passenden statischen IP konfiguriert werden (z.B. 192.168.1.20).    
- Der EdgeRouter X ist nun über https://192.168.1.1 zu erreichen .  
- Nach dem Login (Benutzer: "ubnt", Passwort: "ubnt") dann unten links auf 'System' klicken. 
- Im Fenster runterscrollen und bei "Upgrade System Image" das Image `gluon-ramips-mt7621-ubnt-erx-initramfs-factory.tar` (aus diesem Projekt) verwenden.
- Den Anweisungen folgen (inkl. Reboot).
- Weiter mit Phase 2

## Phase 2 - Gluon-Sysupgrade über die Gluon-Konfigseite
- Der EdgeRouter X muß nun über einen der Ports eth1-4 (LAN) mit dem PC verbunden werden.
- Den PC wieder so konfigurieren, dass er seine IP per DHCP erhält.
- Nach dem Booten des EdgeRouters ist die Gluon-Konfigseite per Web-Browser über http://192.168.1.1 zu ereichen.
- Evtl. den Browser-Cache, -Verlauf, etc. löschen. Es kann sonst zu Browser-Problemen wegen des vorherigen http**s**-Zugriffs auf 192.168.1.1 kommen.
- Nun im Gluon-Konfigmodus ein Sysupgrade mit einem Image einer beliebigen Community durchführen.
- Weiter mit Phase 3

## Phase 3 - Einrichten der eigenen Community-Firmware
- Nach dem Booten sollte über http://192.168.1.1 die Gluon-Konfigseite der Community-spezifischen Firmware angezeigt werden.

Done!

---

# Per Konsole zurück zur UBNT-Stockfirmware
Gute Nachrichten:  
Ein EdgeRouter X mit einer bereits aufgespielten Gluon- oder Lede-Firmware läßt sich sehr einfach über die Konsole auf die original UBNT-Stockfrimware zurückflashen.  
  
  
Bei diesem Projekt fällt auch ein initramfs-Kernel ab. Der EdgeRouter X kann mit Hilfe der folgenden Anleitung überredet werden, diesen Kernel beim Booten zu laden. Danach liegt ein Gluon-System vor, welches vollständig im RAM abläuft (der Kernel, wie auch das Filesystem). Dadurch wird der Flash-Speicher von der laufenden Firmware nicht eingebunden und die UBNT-Stockfirmware kann ohne Probleme im Flash-Speicher abgelegt werden. Die Prozedur ist mehrphasig.  
  
Wenn ein Gluon- oder Lede-Router umgeflasht werde soll, dann wird folgendes benötigt:
- Das hier bereitgestellen initramfs-Binary: [back-to-stock-ramips-mt7621-ubnt-erx-initramfs-kernel.bin](http://)
- Eine original UBNT Stockfirmware für den EdgeRouter X: [https://www.ubnt.com/download/edgemax/edgerouter-x](https://www.ubnt.com/download/edgemax/edgerouter-x)

## Phase 1 - Flashen des initramfs Binaries
- Das initramfs-Binary `back-to-stock-ramips-mt7621-ubnt-erx-initramfs-kernel.bin` irgendwie auf den umzuflashenden Gluon- bzw. Lede-EdgeRouter in den Ordner `/tmp` transferieren (z.B. mit "scp").
- Mit dem umzuflashenden Gluon- bzw. Lede-EdgeRouter X per SSH verbinden.
- Mit folgenden Befehlen das initramfs-Binary in die Kernel-Flashpartition mtdblock3 und mtdblock4 übertragen:  
```
dd if=/tmp/back-to-stock-ramips-mt7621-ubnt-erx-initramfs-kernel.bin of=/dev/mtdblock3
dd if=/tmp/back-to-stock-ramips-mt7621-ubnt-erx-initramfs-kernel.bin of=/dev/mtdblock4
```
- Dann mit `reboot' den EdgeRouter X neustarten.

## Phase 2 - Flashen des initramfs Binaries
- Der EdgeRouter X muß über einen der Ports eth1-4 (LAN) mit dem PC verbunden werden.
- Den PC ggf. so konfigurieren, dass er seine IP per DHCP erhält.
- Die UBNT-Stockfirmware lokal auf dem PC entpacken und die Dateien `version.tmp, squashfs.tmp, squashfs.tmp.md5, and vmlinux.tmp` irgendwie auf den umzuflashenden EdgeRouter X in den Ordner `/tmp` transferieren (z.B. mit "scp").
- Nach dem Booten mittels `ssh root@192.168.1.1' auf dem EdgeRouters X anmelden.
- Mit folgenden Befehlen wird die UBNT-Stockfirmware auf den EdgeRouters X geflasht:  
```
ubdetach -p /dev/mtd5
ubiformat /dev/mtd5
ubiattach -p /dev/mtd5
ubimkvol /dev/ubi0 --vol_id=0 --lebs=1925 --name=troot
mount -o sync -t ubifs ubi0:troot /mnt/
cp /tmp/version.tmp /mnt/version
cp /tmp/squashfs.tmp /mnt/squashfs.img              # <- Das kann etwas länger dauern...
cp /tmp/squashfs.tmp.md5 /mnt/squashfs.img.md5

dd if=/tmp/vmlinux.tmp of=/dev/mtdblock3
dd if=/tmp/vmlinux.tmp of=/dev/mtdblock4
```
- Dann mit `reboot' den EdgeRouter X neustarten.

## Phase 3 - Einrichten der UBNT-Stockfirmware
- Ein neuer EdgeRouter X hat die feste IP 192.168.1.1, es läuft kein DHCP auf dem Router.  
- Der EdgeRouter X muß über den eth0-Port (WAN) mit einem PC verbunden werden.  
- Ein zu verbindender PC muss daher mit einer passenden statischen IP konfiguriert werden (z.B. 192.168.1.20).  
- Das UBNT Web-GUI ist nach dem Booten und nach ca. 2 Minuten per Web-Browser über https://192.168.1.1 zu erreichen.  
- Nach dem Login (Benutzer: "ubnt", Passwort: "ubnt"), dann unten links auf 'System' klicken.
- Den EdgeRouter X nach Belieben konfigurieren.

Done!  

---

# ERX Factory-Image selberbauen
folgt  

---

# Interessante Links
- [OpenWRT Wiki - Ubiquiti EdgeRouter X (ER-X), EdgeRouter X-SFP (ER-X-SFP) and EdgePoint R6 (EP-R6)](https://wiki.openwrt.org/toh/ubiquiti/ubiquiti_edgerouter_x_er-x_ka) 
- [OpenWRT on the Ubiquiti EdgeRouter X](http://sector5d.org/openwrt-on-the-ubiquiti-edgerouter-x.html)
- [ERX, ERX-SFP System Recovery per serieller Schnittstelle und TFTP](https://community.ubnt.com/t5/EdgeMAX/ERX-ERX-SFP-System-Recovery/td-p/2056921)  
- [Original UBNT-Stockfirmware für EdgeRouter X, EdgeRouter X-SF und EdgePoint R6](https://www.ubnt.com/download/edgemax/edgerouter-x)

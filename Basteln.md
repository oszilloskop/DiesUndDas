![Logo](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/images/logo-ffm.png)  

# ToDo

### Firmware
- [x] Aktiviertes MoL wird bei einem Update zurückgesetzt. Siehe [MoL](https://github.com/freifunk-gluon/gluon/blob/master/package/gluon-core/luasrc/lib/gluon/upgrade/220-interface-lan) und [MoM](https://github.com/freifunk-gluon/gluon/blob/master/package/gluon-core/luasrc/lib/gluon/upgrade/210-interface-wan) 

### Map
- [ ] Offline-Knoten verschwinden erst nach 3 Monaten von der Map
- [ ] Map: Es werden sehr oft nicht alle Knoten-Grafen aktualisiert.
- [ ] Die verwendeten Frequenzen/Kanäle der Knoten werden nicht angezeigt. Wie kommt man bei uns an 'alle' respondd-Daten ran?

### Backend
- [ ] Nur noch Platz für ca. 10 neue FF-Router im Netz. Danach sind alle GWs voll und fastd1 ist am Anschlag.
- [ ] FW-Updates von an fastd1-hängenden Routern führt zu Störungen (langsame Verbindung Fastd1 zu DL-Server)
- [ ] GW06 hängt sich auffällig oft auf ( 2 x im März 2019)
- [ ] Public DL-Bereich: Der Inhalt vom Gitrepo wird nicht wirklich auf https://dl.ffm.freifunk.net/public/ gespiegelt. Arbeit verpufft. 

### Sonstiges
- [ ] Zugriff auf Statusseite gestört.  
Aufrufe auf beliebige Statusseiten über fddd: sind gestört. Erst wenn die identische Statusseite mind. einmal per 2a06: aufgerufen wurde, lässt sie sich "dann" auch per fddd: aufrufen.  
Das Verhalten trifft nur auf, wenn ein Uplink vorhanden ist.  
Bei total isolierten Routern tritt dieses Problem nicht auf.  
Der Zugriff auf Next-Node 10.126.0.1 wird auf eine IPv6 fddd:-Adressen umgeleitet. Dieses führt dazu, das kein lokaler Statusseitenaufruf möglich ist.
- [ ] 'nn', 'NextNode' etc. aus der Site funktioniert nicht. Wo kommt das funktionierende "nextnode.ffffm" her? DNS?
- [ ] Eine ordentliche Routerinstallation ohne Upling ist nach wie vor nicht praktikabel möglich. Keine IPv4, keine Statusseite etc.

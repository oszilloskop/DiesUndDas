![Logo](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/images/logo-ffm.png)  

# ToDo

---

### Map
- [ ] Offline-Knoten verschwinden erst nach 3 Monaten von der Map
- [ ] Map: Es werden sehr oft nicht alle Knoten-Grafen aktualisiert.

### Backend
- [ ] Nurt noch ca. 10 neue FF-Router im Netz, dann sind alle GWs voll und fastd1 ist am Anschlag.
- [ ] FW-Updates von an fastd1-hängenden Routern führt zu Störungen (langsame Verbindung Fastd1 zu DL-Server)

### Sonstiges
- [ ] Zugriff auf Statusseite gestört.  
Aufrufe auf beliebige Statusseiten über fddd: sind gestört. Erst wenn die identische Statusseite mind. einmal per 2a06: aufgerufen wurde, lässt sie sich "dann" auch per fddd: aufrufen.  
Das Verhalten trifft nur auf, wenn ein Uplink vorhanden ist.  
Bei total isolierten Routern tritt dieses Problem nicht auf.  
Der Zugriff auf Next-Node 10.126.0.1 wird auf eine IPv6 fddd:-Adressen umgeleitet. Dieses führt dazu, das kein lokaler Statusseitenaufruf möglich ist.
- [ ] 'nn', 'NextNode' etc. aus der Site funktioniert nicht. Wo kommt das funktionierende "nextnode.ffffm" her? DNS?
- [ ] Eine Routerinstallation ohne Upling ist nach wie vor nicht wirklich gut möglich. Keine IPv4, keine Statusseite etc.




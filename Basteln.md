![Logo](https://raw.githubusercontent.com/oszilloskop/DiesUndDas/master/images/logo-ffm.png)  

# ToDo

---

### Map
- [x] Routerstatistiken wieder aktivieren
- [x] Router-Statistiken auf der Map etwas sortieren (z.B. Traffic weiter nach oben)
- [ ] Offline-Knoten verschwinden erst nach 3 Monaten von der Map
- [ ] Supernodes tauchen permanent als neue Knoten auf der Map auf. Alle Offline Supernodes verschwinden erst nach 3 Monaten aus der Statistik. Die Anzahl der Gesamtknoten stimmt daher hinten und vorne nicht.
- [ ] Map zeigt offline Knoten noch mit ihrem letzen Status im Grafen als online an (zum Glück nur, wenn sie in einem Mesh hängen).
- [ ] Warum werden durch Yanic Knoten-Daten neurdings für 5 Jahre in der Datenbank gehalten? (s. https://chaos.expert/FFFFM/salt-state-ffrl-exit/commit/14f59f0feeaec10855f09bd6a4a006ff603fe8a0#f703cefff01573819efc18904ce2de79fd634c7c_81_80) (Datensparsamkeit?)
- [ ] Zugriff auf Statusseite gestört.  
Aufrufe auf beliebige Statusseiten über fddd: sind gestört. Erst wenn die identische Statusseite mind. einmal per 2a06: aufgerufen wurde, lässt sie sich "dann" auch per fddd: aufrufen.  
Das Verhalten trifft nur auf, wenn ein Uplink vorhanden ist.  
Bei total isolierten Routern tritt dieses Problem nicht auf.  
Der Zugriff auf Next-Node 10.126.0.1 wird auf eine IPv6 fddd:-Adressen umgeleitet. Dieses führt dazu, das kein lokaler Statusseitenaufruf möglich ist.

### Backend

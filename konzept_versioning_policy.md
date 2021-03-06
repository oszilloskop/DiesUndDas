Date: 2019-02-23  
Title: Fiktive Frankfurter Freifunk Versioning Policy  
Published: false  

![Logo](https://github.com/oszilloskop/DiesUndDas/blob/master/images/logo-ffm.png)  

<br>
<br>

---

## Vorabanmerkung
In Frankfurt existieren folgende drei Freifunk Firmware-Ausprägungen (Branches):

- **stable** -> Stabiles Gluon Release
- **test** -> Feldtest zukünftiger stabiler Gluon Releases   
- **dev** -> Entwicklungszweig eines aktuellen oder zukünftigen Gluon Releases (z.B. Gluon v2018.2.x)

Die Mehrzahl der Router-Betreiber setzen das Frankfurter Firmware-Release aus dem stable-Branch ein. 

Für den Freifunk-Router-Betreiber sollte immer ersichtlich sein, welche Firmware er aktuell einsetzt und ob eine neuere Firmware angeboten wird.

Die aktuellste verfügbare Firmware kann über eine Änderungshistorie oder über den Frankfurter Download-Server bestimmt werden.

Ziel ist:

- Priorisierung der Firmware-Branches: stabel > test > dev
- Erfüllung aller **Branch-Rauf-Runter-Updatewünsche** der Routerbetreiber.

Es muß dabei sichergestellt sein, dass:

- innerhalb eines Branches, wie gehabt, **immer** auf neuere Firmware aktualisiert wird. 
- bei einer Umstellung auf einen höher priorisierten Branch **immer** nur auf neuere Firmware aktualisiert wird. 
- bei einer Umstellung auf einen niedriger priorisierten Branch  **immer** nur auf eine passende neuere Firmware aktualisiert wird.

#### Vorgegriffenes Lösungsbeispiel:

- **1.10.2.1-dev-106**
- **1.10.3-test-62**
- **1.11-stable-12** 

<br>

---

<br>

# Frankfurter Freifunk Versioning Policy



## Grundsätze der Firmware-Benamung
Es gilt zu beachten, dass die Benamung einer Firmware einen großen Einfluss auf die Funktionsweise des **Autoupdaters** hat. Der **Autoupdater** soll nicht nur dafür genutzt werden, einfachst immer auf das neueste Firmware-Release zu aktualisieren, sondern er soll auch Branch-Rauf-Runter-Update-Möglichkeiten ermöglichen.  

Es steht hinter dem Firmware-Namen also auch eine nicht zu vernachlässigende Funktionalität!  

Daher sollte die Firmware-Bezeichnung mindestens drei unterschiedlichen Zuordnungskriterien genügen: 

- Dem **Branch Namen** - Wird durch die Variante der Firmware vorgegeben
- Der **Branch Buildnummer** - Wird durch den Buildprozess vorgegeben  
- Der **Versionsnummer** - Wird von dem Entwickler vorgegeben.
- ggf. noch das Build-Datum 

Werden diese drei Kriterien als ein String zusammengefügt, getrennt durch das Zeichen '-', so ergibt sich immer eine eineindeutige **Firmware-Bezeichnung**.

Bezüglich des Autoupdaters und der Vorgabe der Branch-Rauf-Runter-Update-Möglichkeit, ist folgende Reihenfolge zu bevorzugen:

**<Versionsnummer&gt;-<Branch Name&gt;-<Branch Buildnummer&gt;**

Für den Autoupdater hat innerhalb eines Branches die Versionsnummer eine höhere Priorität als die Buildnummer.  

Haben innerhalb eines Branches zwei Firmware-Images identische Versionsnummern, aber unterschiedliche Buildnummer, so wird der Autoupdater die Buildnummer zur Größenbestimmung heranziehen.

<br>

**Anmerkung:**  
Wenn folgend von dem Namen einer Firmware gesprochen wird, so ist ausschließlich die Kombination  
<Versionsnummer&gt;-<Branch Name&gt;-<Branch Buildnummer&gt; gemeint.


## Findung der Versionsnummer
Die **Versionsnummer** muss durch den Entwickler vorgegeben werden. Dieses muß nicht bei jedem Build eines Branches geschehen.  
Mit der richtigen Wahl der **Versionsnummer** kann, wenn gewünscht, eine sehr feine Branch-Rauf-Runter-Update-Möglichkeit bereitgestellt werden.
Es wird hier eine maximal durch drei Punkte getrennte Nummer verwendet.  

Beispiel: 1, 1.2, 1.2.3,  1.2.3.4

Folgend wird beschrieben, wie diese Nummerierung zu wählen ist.

### Versionsnummer der Release-Firmware (stable)
Die Versionsnummer des **stable** Branches wird sehr wahrscheinlich nicht häufig angepasst werden. Eigentlich würde hier eine Ziffer ausreichen. Aus Gründen wird aber wohl eine Versionsnummer mit einer zweiteiligen Ziffernfolge bevorzugt werden.

Das **X** einer neuen '**stable**' ist frei zu wählen.  
Das **Y** einer neuen '**stable**' entspricht mindestens dem **Y** der letzten '**Test**' + 1
 
    X.Y-stable  
    │ │  
    │ └─ Nebenfunktionalität mindestens wie letzte 'Test' + 1
    └─── Hauptfunktionalität (z.B. +1 bei dem Wechsel der Gluon-Hauptversion oder bei erheblichen Änderungen an OpenWrt/Lede)
    
### Versionsnummer der Release-Kanditat-Firmware (Test)
Die Versionsnummer des **Test** Branches wird mindestens so häufiger wie die Versionsnummer des '**stable**' Branches angepasst werden. Eigentlich würde hier eine zweiteilige Ziffernfolge ausreichen. Aus Gründen wird aber wohl eine Versionsnummer mit dreiteiliger Ziffernfolge bevorzugt werden.

**X** und **Y** einer neuen '**Test**' entsprechen immer '**X**' und '**Y**' der letzten '**stable**'.  
Das **Z** einer neuen '**Test**' entspricht mindestens dem **Z** der letzten '**dev**' + 1  

    X.Y.Z-Test
    │ │ │       
    │ │ └─ Unterfunktionalität mindestens wie letzte 'dev' + 1
    │ └─── Nebenfunktionalität wie letzte 'stable'
    └───── Hauptfunktionalität wie letzte 'stable'

### Versionsnummer des Entwicklungbereiches (dev)
Die Versionsnummer des **dev** Branches wird unbestimmt häufiger angepasst werden. Eigentlich würde hier eine dreiteilige Ziffernfolge ausreichen. Aus Gründen wird aber wohl eine Versionsnummer mit vierteiliger Ziffernfolge bevorzugt werden.  

Start einer neuen '**dev**'-Entwicklung beginnt immer mit **X** und **Y** der letzten '**stable**'.  
**Z** und **W** sind frei zu wählen, müssen aber ungleich Null sein (Grund: siehe weiter unten bezüglich 'broken'-Firmware).

    X.Y.Z.W-dev
    │ │ │ │ 
    │ │ │ └─ Entwicklungsstand > 0 (ein Wechsel ist unwahrscheinlich, oder aus Gründen)
    │ │ └─── Unterfunktionalität > 0 
    │ └───── Nebenfunktionalität wie letzte 'stable'
    └─────── Hauptfunktionalität wie letzte 'stable'


## Ergebnis
Mit folgender Benamung werden alle Vorgaben des **Autoupdaters** und auch Branch-Rauf-Runter-Update**wünsche** erfüllt.

- X.Y-stable-ABC
- X.Y.Z-test-DEF
- X.Y.Z.W-dev-GHI

#### Beispiel:

- 1.11-stable-12
- 1.10.3-test-62
- 1.10.2.1-dev-106



### Beispiel
 
Eine fiktive Entwicklung läuft wie folgt ab:

1. Ein aktueller Branch-Zustand sei gegeben 
2. Entwicklung einer neuen 'dev' Firmware
3. Entwicklung 'dev' Firmware
4. Übergang von 'dev' in 'Test'
5. Weiterentwicklung an alter 'dev' Firmware
6. Eine weitere 'test' Firmware 
7. Übergang von 'test' in 'stable'
8. Eine weitere 'dev' Firmware mit alter 'stable' als Basis
9. Eine 'dev' Firmware mit aktueller 'stable' als Basis
10. Eine weitere 'dev' Firmware
11. Übergang von 'dev' in 'Test' 
12. Eine weitere 'test' Firmware 
13. Übergang von 'test' in 'stable'
14. Eine weiteres 'stable' Releases 
15. Eine weitere 'stable' Releases 

Nr | stable        | test           | dev |
------------- | ------------- | ------------- | -------------
1 | 1.10-stable-10 | 1.09.5-test-62 | 1.09.4.2-dev-102
2 |                |                | 1.10.1.1-dev-103
3 |                |                | 1.10.1.1-dev-104
4 |                | 1.10.2-test-63 |
5 |                |                | 1.10.1.1-dev-105
6 |                | 1.10.2-test-64 |
7 | 1.11-stable-11 |                |
8 |                |                | 1.10.1.2-dev-106
9 |                |                | 1.11.1.1-dev-107
10 |                |                | 1.11.1.2-dev-108
11 |                | 1.11.2-test-65 |
12 |                | 1.11.3-test-66 |
13 | 1.12-stable-12 |                |
14 | 1.12-stable-13 |                |
15 | 1.13-stable-14 |                |

## Ergebnis
- Die einzelnen Branches lassen sich unabhängig von einander entwickeln.  
    - Soll z.B. eine neue '**Test**', basierend auf der aktuellen '**dev**', erstellt werden, so ist das Wissen über die genaue '**dev**' Version nicht notwendig. Es muß lediglich das '**Z**' der '**Test**' erhöht werden.
    -  '**dev**' Entwickler können ohne zwingend der '**Test**' Versionierung folgen zu müssen (siehe Beispiel 5.), z.B. an Packages weiter entwickeln.  
- Die Darstellung und Bedeutung der Map-Versions-Statistiken ist mit schnellem Blick zu erfassen.   
- Routerbetreiber werden nicht durch unterschiedlich große '**X.Y**' irritiert. 




---


## Done!

---

<br>
<br>
<br>
<br>
<br>
<br>
<br>


# Anhang
---

<br>
## Weitere Ideen

### Versionsnummer einer 'broken' Firmware
Dieser Textbereich ist noch nicht ausgegoren!  

Eine '**broken**' (Unterstützung von ungetesteten Router Modellen) sollte immer mindestens auf einer halbwegs aktuellen '**dev**' basieren.

Eine '**broken**' ist immer einer '**dev**' unterzuordnen.  
**X**, **Y** und **Z** wie bei einer der letzten '**dev**'.  
Für **W** muß '0' gewählt werden.  

### Versionsnummer einer 'experimental' Firmware
Dieser Textbereich ist noch nicht ausgegoren!  

Es ist zu überlegen, ob überhaupt eine '**experimental**' (Basis ist der Gluon Master-Branch) angeboten werden sollte.  
Bei einem Update auf einen anderen Branch, ist die Wahrscheinlichkeit groß, dass es sich hier in Wirklichkeit um einen Downgrade handelt.  

Bei einer '**experimental**' ist nicht immer klar:

- welche uci Paramter noch gültig sind oder nur umbenannt wurden.
- ob ggf. Packages wieder entfernt wurden/werden mussten.
- ob es Konflikte zwischen neue und älteren Packages gibt. 

**X**, **Y**, **Z**  und **W** ??? 

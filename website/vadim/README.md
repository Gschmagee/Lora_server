# Dynamic Ant-Colony-System
[Vanilla Repo](https://github.com/adibaba/ACOTSPJava)  
[DynamicACO](doc/DynamicACO.pdf)  
[TSP File Doku](doc/tsplib_definition.ps)  

## Build
Die JAR mit Abhängigkeiten kannst du mit Maven bauen:  
``` mvn clean compile assembly:single ```

## Run 
### MySQL
Ein MySQL Server mit Usaer:PW "aco:tsp" wird benötigt.  
Du importierst die diese [Tabellen](distances.sql).  
**distance_matrix** (from_loc_id, to_loc_id, distance): Distanzmatrix in Meter  
**location_names** (loc_id, address): Zuordnung von Location IDs zu Straßennamen  
**pheromones** (from_loc_id, to_loc_id, pheromone_level): Pheromone von der letzten Ausführung  

Es sind 15 Orte in der Datenbank.

### JAR
Das kompilierte JAR führst du in der Konsole aus.  
Es wird ein Verzeichnis ```maps``` und ein Verzeichnis ```tsp-problem-instances``` erstellt.  
Dort landen entsprechend die Google Maps Karten und die *.atsp Dateien, die die Probleminstanz definieren.  
(A)TSP Dateien werden erstellt, um die Ergebnisse mit anderen Solvern zu vergleichen (LocalSolver vergibt schnell kostenlose akademische Lizensen)  
Auf der Karte wird in grün die Route mit 15 - n Orten und in rot die volle 15 Knoten Route gezeichnet. Das ist zu Demozwecken, um zu zeigen dass bei n weniger zu besuchenen Tonnen, x Meter Fahrt eingespart worden sind.  
Prinzipiell lass ich das ACS danmit zwei mal laufen, einmal mit 15 Tonnen und einmal mit 15 - n Tonnen.  

```java -jar dynamic-acs-1.0-jar-with-dependencies.jar --acs --tries 3 --time 5 --localsearch 0 --quiet -p 5```  

```--acs```          - Es gibt verschiedene ACO Verfahren, wir nutzen hier das Dynamic Ant Colony System (siehe DynamicACO Paper)  
```--tries 3```      - Anzahl der Versuche (3). ACS ist eine probalistische Heuristik -> in einem neuen Versuch können bessere Ergebnisse entstehen  
```--time 5```       - 5 Sekunden pro Versuch.  
```--localsearch 0``` - Lokale Suche als Optimierung nicht verwenden. Im Paper steht drin dass 2-Opt funktionieren sollte, tuts aber nicht.  
```--quiet```        - Keine unnötigen Dateien anlegen in der Ausgabe.  
```-p 5```           - n Orte, die ausgelassen werden.a

# Meine Beiträge zur Codebase:
src/**/InOut.java:  
    - ```createTospFileFromDB()```: Aus den Datenbankeinträgen ein (A)TSP File generieren  
    - ```writeNormalizedPheromones()```: Pheromone in die Datenbank schreiben  
    - ```readNormalizedPheromones()```: Pheromone aus der Datebank lesen  
    - ```read_etsp```: Kann nun auch ATSP Files einlesen  
    - ```generateMap```: Generiert mit der [Velocity Templating Engine](http://velocity.apache.org/) die Karte.  

templates/map.vm: Velocity Template. Im Prinzip wie ein Lückentext, der in der Laufzeit mit Daten gefúllt wird.

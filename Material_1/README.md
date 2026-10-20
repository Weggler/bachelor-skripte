# Materialien zu Mathematik 1

| Ordner | Inhalt und Verwendung |
| --- | --- |
| `aufgaben/` | Übungsaufgaben, nach denselben Themen wie die Inhaltsdateien in `Mathematik_1` benannt |
| `loesungen/` | Zugehörige Lösungen; die Hauptdokumente binden diese nach Bedarf ein |
| `demos/excel/` | Euler'sche Zahl, Folgen und Newton-Iteration |
| `demos/geogebra/` | Interaktive Beispiele zu Funktionen, Transformationen, Interpolation und Newton-Verfahren |
| `ergaenzungen/kontextaufgaben/` | Kontextbezogene Aufgabenblätter mit zugehörigen Bildern |
| `ergaenzungen/funktionen/` | Zusätzliches Aufgabenblatt zur Faktorisierung |
| `ergaenzungen/lineare_algebra/` | Aufgaben zu Rang, Defekt und linearen Gleichungssystemen |
| `ergaenzungen/geometrie/` | Zusammengehörige GeoGebra-, Bild- und Word-Dateien zur Geometrie |

Die regulären Aufgaben- und Lösungsdateien sind zum Einbinden bestimmt.

Der Ausgabemodus wird in der Präambel des Hauptdokuments mit `\integriereaufgabentrue` bzw. `\integriereaufgabenfalse` eingestellt.  Bei `true` bleiben Aufgabenüberschriften unnummeriert und verweisen auf die enthaltene Theorie. Bei `false` werden die Aufgabenüberschriften nummeriert; die Einleitungen verweisen allgemein auf das Skript. Links auf die gemeinsam enthaltenen Lösungen bleiben in beiden Fällen bestehen. Die separaten Aufgabenhefte verwenden deshalb `false`. Theoriehinweise innerhalb eines Lösungswegs können über `\abschnittsverweis{label}` unabhängig davon eine vorhandene Abschnittsnummer verlinken; bei fehlendem Ziel entfällt die Ausgabe.  Siehe [LaTeX/README.md](../LaTeX/README.md).

Die ergänzenden LaTeX-Aufgabenblätter enthalten eigene Dokumentpräambeln und werden aus ihrem jeweiligen Ordner kompiliert. Ihre lokalen Bilder bleiben bei den Aufgabenblättern.

Die Ergänzungen sind zusätzliche Materialsammlungen und nicht sämtlich Teil des Gesamtskripts. 

Angaben zur Urheberschaft stehen in [Urheberschaft und Quellen](../QUELLEN.md).

Für optionale Randnummern wird `\randverweis{label}` verwendet.
Bei fehlendem Ziel entfallen sowohl die Nummer als auch der gesamte Randkasten.

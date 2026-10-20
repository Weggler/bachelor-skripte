# Kombiniertes Skript Mathematik 1 und 2

`MA2.tex` verwendet KOMA-Script (`scrreprt`) mit Teilen und Kapiteln. Es bindet die fachlichen Quellen beider Module ein. Aufgaben und Lösungen werden in der aktuellen Zusammenstellung nicht mitkompiliert.

Die Einstellung in der Präambel lautet deshalb:

```latex
\input{../LaTeX/ausgabemodus}
\integriereaufgabenfalse
```

Auch bei ausgeschaltetem Aufgabenmodus sind Querverweise zwischen enthaltenen Theorieabschnitten möglich. `\abschnittsverweis{label}` behandelt solche Hinweise unabhängig vom Aufgabenmodus. Es ist keine externe Einzel-PDF nötig, wenn das Ziel bereits im Gesamtskript liegt.

Für eine Ausgabe mit integrierten Aufgaben und Lösungen müssen die passenden Dateien über `\input` eingebunden und `\integriereaufgabentrue` eingestellt werden. Allein das Umschalten ändert die Dateizusammenstellung nicht.

Weitere Einzelheiten stehen in [LaTeX/README.md](../LaTeX/README.md);
Kompilierbefehle finden sich in der [zentralen README](../README.md).

Die Theoriequellen in `Mathematik_2` haben sprechende Dateinamen und Labels.  Die Kapitel-Einführungen stehen getrennt unter `Mathematik_2/leitideen`.  Die Kapitelreihenfolge und Dokumentklasse bleiben erhalten. Die gemeinsame Kopfzeile zeigt die aktuelle Kapitelüberschrift links, klein und aufrecht.

Der Anhang enthält die geprüfte Symbolübersicht aus `Mathematik_2/symbole.tex`.  Ein eigenständiges Handout lässt sich über `Mathematik_2_Sections/MA2-Symbole.tex` erstellen. Beide Ausgaben verwenden dieselbe Quelle.

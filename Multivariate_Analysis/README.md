# Multivariate Analysis

Eigenständiges Theorie-Add-on von Prof. Dr. Lucy Weggler für Bachelor- und Masterveranstaltungen. Das Skript wird unabhängig von Mathematik 1 und 2 zusammengestellt.

## Aufbau

- `funktionen_mehrerer_veraenderlicher.tex`: Funktionen, partielle Ableitungen und lokale Näherungen
- `lokale_analysis.tex`: Fehlerrechnung und lokale Extrema
- `koordinatensysteme.tex`: Polar-, Zylinder- und Kugelkoordinaten
- `mehrdimensionale_integrale.tex`: Integration in mehreren Dimensionen
- `leitideen/multivariate_analysis.tex`: übergreifende Leitidee
- `Bilder/`: ausschließlich im Theoriecode eingebundene Abbildungen

Das Hauptdokument liegt in `../Multivariate_Analysis_Skript/Multivariate_Analysis.tex`. Dateinamen und Labels sind thematisch benannt; Labels verwenden das Präfix `MULTI-`.

## PDF erstellen

Vom Repository-Hauptverzeichnis aus:

```sh
cd Multivariate_Analysis_Skript
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../build/multivariate_analysis Multivariate_Analysis.tex
```

Die Quellen verwenden Windows-1252 (`ansinew`); Markdown verwendet UTF-8. Relative Einbindungen werden vom Ordner des Hauptdokuments aus aufgelöst.

Kopfzeilen und optionale Abschnittsverweise verwenden die gemeinsamen Werkzeuge in `../LaTeX`. Die Ausgabe enthält ausschließlich Theorie; `\integriereaufgabenfalse` ist eingestellt. Es gibt keine eingebundenen Aufgabenblätter oder Aufgabenplatzhalter.

Autorenschaft, Lizenz und Seitenzahlen erscheinen auch auf Titel- und Kapitelanfangsseiten.

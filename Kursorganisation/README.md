# Kursorganisation

Semesterbezogene Informationen werden getrennt von den fachlichen Inhalten
aufbewahrt. Der Ordner `wintersemester_2026_2027` enthält:

| Datei | Funktion |
| --- | --- |
| `mathematik_1.tex` | Kursinformationen für Mathematik 1 |
| `mathematik_1_1.tex` | Kursinformationen für Mathematik 1.1 |
| `kursinformationen.tex` | Kompilierbares Hauptdokument |

Das Hauptdokument bindet standardmäßig `mathematik_1.tex` ein. Für die andere
Kursvariante kann am Dokumentende stattdessen `mathematik_1_1.tex` eingebunden
werden; die alternative Zeile ist bereits auskommentiert vorhanden.

Vom Repository-Hauptverzeichnis aus:

```sh
cd Kursorganisation/wintersemester_2026_2027
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../../build/kursorganisation kursinformationen.tex
```

Für ein neues Semester empfiehlt sich ein eigener Semesterordner. Die darin enthaltenen Termine und Kursregelungen sollten vor einer Weiterverwendung an die konkrete Lehrveranstaltung angepasst werden.

## Sommersemester 2026

`sommersemester_2026/mathematik_2.tex` enthält die Kursinformationen aus dem
früheren `Mathematik_2/00.tex`. Das Hauptdokument
`sommersemester_2026/kursinformationen.tex` ersetzt `MA2-00.tex`.
Die Kategorien der Lernmaterialien sind durch Textüberschriften gekennzeichnet;
das Dokument benötigt keine Icons außerhalb des Repositorys.

```sh
cd Kursorganisation/sommersemester_2026
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../../build/kursorganisation_sommersemester_2026 kursinformationen.tex
```

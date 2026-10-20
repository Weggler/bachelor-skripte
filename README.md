# Mathematik für Ingenieurstudiengänge

Skripte, Übungsaufgaben, Lösungen und ergänzende Lehrmaterialien von Prof. Dr. Lucy Weggler, Hochschule für Technik und Wirtschaft Berlin.  Die Quellen ermöglichen es Lehrenden, einzelne Themen auszuwählen, Aufgaben anzupassen und eigene Lehrveranstaltungen daraus zusammenzustellen.

## Einstieg

| Inhalt | Einstiegspunkt |
| --- | --- |
| Mathematik 1: Gesamtskript mit Aufgaben und Lösungen | [Mathematik_1_Skript/MA1.tex](Mathematik_1_Skript/MA1.tex) |
| Mathematik 1: einzelne Themenblöcke und Aufgabenhefte | [Mathematik_1_Sections](Mathematik_1_Sections) |
| Mathematik 1: fachliche Quelldateien, Bilddateien und Leitideen | [Mathematik_1](Mathematik_1) |
| Mathematik 1: Aufgaben, Lösungen und Ergänzungen | [Material_1](Material_1) |
| Mathematik 2: Gesamtskript einschließlich Mathematik 1 | [Mathematik_2_Skript/MA2.tex](Mathematik_2_Skript/MA2.tex) |
| Mathematik 2: einzelne Themenblöcke und Aufgabenhefte | [Mathematik_2_Sections](Mathematik_2_Sections) |
| Mathematik 2: fachliche Quelldateien, Bilddateien und Leitideen | [Mathematik_2](Mathematik_2) |
| Mathematik 2: Aufgaben, Lösungen und Ergänzungen | [Material_1](Material_2) |
| Semesterbezogene Kursinformationen | [Kursorganisation](Kursorganisation) |

Die Struktur von Mathematik 1 und 2 ist vereinheitlicht: sprechende Inhaltsnamen,
getrennte Aufgaben und Lösungen, Demos und Ergänzungen. 

## PDFs erstellen

Benötigt werden eine LaTeX-Installation mit pdfLaTeX, deutschen Sprachdateien und den verwendeten Zusatzpaketen sowie vorzugsweise `latexmk`. Verwendet werden unter anderem `tcolorbox` mit TikZ, `ctable`, `fancyhdr`, KOMA-Script, `scrlayer-scrpage` und `etoc`. 

**Das Arbeitsverzeichnis muss der Ordner des jeweiligen Hauptdokuments sein.**
Die relativen Einbindungen und Bildpfade beziehen sich darauf. Die einzelnen fachlichen Inhaltsdateien sind überwiegend keine eigenständigen Dokumente.

Mathematik 1, vom Repository-Hauptverzeichnis aus:

```sh
cd Mathematik_1_Skript
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../build/mathematik_1 MA1.tex
```

Mathematik 2, ebenfalls vom Repository-Hauptverzeichnis aus:

```sh
cd Mathematik_2_Skript
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../build/mathematik_2 MA2.tex
```

Einzelne Themenblöcke lassen sich entsprechend aus `Mathematik_1_Sections` erstellen, beispielsweise mit `MA1-FNT.tex` für Funktionen oder
`MA1-FNT-Aufgaben.tex` für das zugehörige Aufgabenheft.

```sh
cd Mathematik_1_Sections
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../build/mathematik_1_sections MA1-FNT.tex
```

Die LaTeX-Quellen verwenden derzeit `ansinew` (Windows-1252). Beim Bearbeiten diese Kodierung beibehalten; die Markdown-Dokumentation verwendet UTF-8.

## Materialien bearbeiten

Inhalte werden einmal in `Mathematik_1` bzw. `Mathematik_2` gepflegt und von den Hauptdokumenten eingebunden. Die Reihenfolge und die sichtbare Nummerierung legt das jeweilige Hauptdokument fest. Die sprechenden Labels beider Module werden auch modulübergreifend verwendet; Änderungen daran müssen repositoryweit erfolgen.

Die gemeinsame Kopfzeile der lesbaren Output Dateien ist in [LaTeX/kopfzeile.tex](LaTeX/kopfzeile.tex) definiert. 

Die Kursorganisation ist nach Semester getrennt und kann unabhängig von den fachlichen Quellen angepasst werden.

Die Präambeln laden außerdem `LaTeX/ausgabemodus.tex`. Der boolesche Schalter `\ifintegriereaufgaben` steuert Aufgabennavigation und Überschriften: `\integriereaufgabentrue` für gemeinsam enthaltene Theorie, Aufgaben und Lösungen, `\integriereaufgabenfalse` für getrennte Ausgaben. Die tatsächliche Dateizusammenstellung erfolgt weiterhin über `\input`. Mathe 1 verwendet im Gesamtskript `true`; das derzeit reine Theorie-Gesamtskript von Mathe 2 und die separaten Hefte verwenden `false`. Theoriehinweise können unabhängig davon mit `\abschnittsverweis{label}` eine vorhandene Abschnittsnummer verlinken; bei fehlendem Ziel entfällt die Ausgabe. Eine vollständige Anleitung steht in [LaTeX/README.md](LaTeX/README.md).

## Bekannte offene Punkte

- Ergänzendes Material ist weder durchgehend geprüft noch stilistisch vereinheitlicht.

## Urheberschaft und Lizenz

Die eigenen Lehrmaterialien stehen unter CC BY-NC-SA 4.0. Die bestätigte Urheberschaft einzelner Materialgruppen und offene Quellenangaben sind in [QUELLEN.md](QUELLEN.md) dokumentiert. Weitere Angaben stehen in [LIZENZ.md](LIZENZ.md).

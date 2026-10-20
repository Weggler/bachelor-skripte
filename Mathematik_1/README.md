# Mathematik 1 – Quelldateien

Die Inhaltsdateien tragen sprechende Namen. Ihre Reihenfolge und die sichtbare
Abschnittsnummerierung entstehen durch die Einbindungen im jeweiligen Hauptdokument.

Zu jedem Thema gehören die Inhaltsdatei in diesem Ordner sowie
`<thema>_aufgaben.tex` in `Material_1/aufgaben` und
`<thema>_loesungen.tex` in `Material_1/loesungen`.
Labels folgen dem Schema `MA1-thema`, `MA1-thema-aufgaben` und
`MA1-thema-loesungen`, jeweils mit Bindestrichen statt Unterstrichen.
Diese Labels werden auch aus Mathematik 2 verwendet.

Die Hauptdokumente laden `LaTeX/ausgabemodus.tex`. Bei
`\integriereaufgabentrue` zeigen die Theorieabschnitte auf die mitkompilierten
Aufgaben. Bei `\integriereaufgabenfalse` entfallen diese Aufgabenlinks.
Theorie- und Aufgabenhefte verwenden `false`, das Mathe-1-Gesamtskript `true`.
Die Einbindungen der Dateien werden weiterhin im Hauptdokument festgelegt.
Siehe [Beschreibung des Ausgabemodus](../LaTeX/README.md).

Die gemeinsame Kopfzeile liegt in `LaTeX/kopfzeile.tex`. Bei `article` zeigt sie
den aktuellen Abschnitt, im Mathe-2-Gesamtskript (`scrreprt`) das aktuelle Kapitel.

Die fachlichen Einführungen stehen gesammelt in `leitideen/`, mit sprechenden
Dateinamen wie `funktionen.tex` und `lineare_algebra.tex`. `mathematik_1.tex`
enthält dort die übergeordnete Leitidee für den Mathe-1-Teil des Gesamtskripts
von Mathematik 2. Die Leitideen werden von den jeweiligen Hauptdokumenten
eingebunden und sind keine eigenständig kompilierbaren Dateien.

Die bisherigen Kursinformationen `00.tex` und `00-1.tex` befinden sich jetzt
unter `Kursorganisation/wintersemester_2026_2027` im Repository-Hauptverzeichnis.


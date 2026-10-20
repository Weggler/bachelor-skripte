# Mathematik 2 – Quelldateien

Die fachlichen Quellen tragen sprechende Namen. Ihre Reihenfolge und die sichtbare
Nummerierung legt das jeweilige Hauptdokument fest. `Mathematik_2_Skript/MA2.tex`
bleibt ein kombiniertes Theorie-Skript mit Teilen und Kapiteln (`scrreprt`);
die Themen- und Aufgabenhefte in `Mathematik_2_Sections` bleiben `article`.

Die Labels folgen wie in Mathematik 1 dem Schema `MA2-thema`,
`MA2-thema-aufgaben` und `MA2-thema-loesungen`. Änderungen betreffen auch
Querverweise in Mathematik 1 und in ergänzenden Sammlungen.

`leitideen/` enthält die übergeordnete Einführung sowie die Einführungen zu den
sechs Kapiteln. Die Kursinformationen stehen separat unter
[Kursorganisation/sommersemester_2026](../Kursorganisation/sommersemester_2026).
`Bilder/` enthält die aktiv in LaTeX verwendeten Bilder mit sprechenden Namen.
Nicht eingebundene Bilder sind unter `Bilder_unused/` erhalten.

Die Symbolübersicht `symbole.tex` steht im Anhang des Gesamtskripts und
wird zugleich vom separaten Hauptdokument `Mathematik_2_Sections/MA2-Symbole.tex`
verwendet. Sie umfasst 58 Einträge zum aktuellen Mathe-2-Stoff, mit Bedeutung
und Beispiel, im kompakten Querformat nach dem Muster von Mathematik 1.
Die frühere Vermischung mit Statistik und multivariater Analysis entfällt;
diese Bereiche sind gesondert abgelegt.

Die Kopfzeile zeigt links, klein und aufrecht die aktuelle Hauptüberschrift:
im Gesamtskript das Kapitel, in den Einzelheften den Abschnitt. Die Konfiguration
steht in [LaTeX/kopfzeile.tex](../LaTeX/kopfzeile.tex).
Aufgabenmodus und bedingte Theorieverweise sind in
[LaTeX/README.md](../LaTeX/README.md) erläutert.

Nicht jede vorhandene fachliche Quelle ist Teil des aktuellen Gesamtskripts.
Insbesondere bleiben zusätzliche Themen und ältere Aufgaben erhalten; ihre
Existenz bedeutet keine Erweiterung des aktuellen Lehrplans.

# Materialien zu Mathematik 2

Die Ablage entspricht Mathematik 1:

| Ordner | Inhalt |
| --- | --- |
| `aufgaben/` | Aufgaben mit sprechenden Themennamen |
| `loesungen/` | Zugehörige ausgearbeitete Lösungen |
| `demos/excel/` | Tabellen und numerische Experimente |
| `demos/geogebra/` | Interaktive Demonstrationen |
| `ergaenzungen/` | Zusätzliches Material zu Differentialgleichungen, Integralrechnung, Integraltransformationen |

Zu einem Thema heißen die Dateien `<thema>_aufgaben.tex` und `<thema>_loesungen.tex`. Die Aufgabenhefte stehen in `Mathematik_2_Sections`. Die ergänzenden Sammlungen enthalten teilweise eigenständige Dokumente und nicht mehr gepflegte Projektdateien.

## Ausgabemodus

Alle beteiligten Hauptdokumente laden `LaTeX/ausgabemodus.tex` in ihrer Präambel.
Der boolesche Schalter heißt `\ifintegriereaufgaben`:

- `\integriereaufgabentrue`: Theorie, Aufgaben und Lösungen liegen gemeinsam vor; Aufgabenüberschriften bleiben unnummeriert und Theorie-Rückverweise sind aktiv.
- `\integriereaufgabenfalse`: separates Theorie- oder Aufgabenheft; Aufgabenüberschriften sind nummeriert und die Einleitungen nennen das Skript allgemein. Verweise auf enthaltene Lösungen bleiben aktiv.

Das kombinierte Mathe-2-Gesamtskript enthält derzeit ausschließlich Theorie aus Mathematik 1 und 2 und verwendet deshalb `false`. Die Zusammenstellung erfolgt über `\input`; der Schalter allein fügt keine Aufgaben hinzu.

Für Theoriehinweise, deren Ziel nicht in jeder Ausgabe vorhanden ist, gibt es `\abschnittsverweis{label}`. Dieser Befehl zeigt die verlinkte Abschnittsnummer bei vorhandenem Ziel und gibt andernfalls nichts aus. Einzelne alte PDF-Dateinamen sind dafür nicht mehr erforderlich.

Die vollständige Beschreibung und Beispiele stehen in [LaTeX/README.md](../LaTeX/README.md).

## Offene Inhalte

Zu `eigenwertprobleme_aufgaben.tex`, `differentialgleichungen_mit_eigenvektoren_aufgaben.tex` und `stabilitaet_aufgaben.tex` liegen derzeit keine ausgearbeiteten Lösungsdateien vor. Diese Aufgabenblätter weisen darauf hin und enthalten keinen Lösungslink auf eine andere oder nicht vorhandene Sammlung. Die zusätzlichen Aufgaben- und Materialsammlungen sind nicht vollständig in jedem Hauptdokument eingebunden.

Zum Theorieabschnitt `anwendungen_der_integration.tex` gibt es derzeit keine eigene Aufgaben- und Lösungsdatei; er enthält deshalb keinen Aufgabenlink.

Für optionale Randnummern wird `\randverweis{label}` verwendet.
Bei fehlendem Ziel entfallen sowohl die Nummer als auch der gesamte Randkasten.

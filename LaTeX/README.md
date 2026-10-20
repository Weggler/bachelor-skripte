# Gemeinsame LaTeX-Einstellungen

`kopfzeile.tex` gestaltet die Kopfzeilen. `ausgabemodus.tex` definiert den
booleschen Schalter `\ifintegriereaufgaben` und die optionalen Verweismakros.
Die Dateien werden in der Präambel des jeweiligen Hauptdokuments geladen.

## Integrierte Aufgaben

Nach dem Laden von `hyperref` und vor `\begin{document}`:

```latex
\input{../LaTeX/ausgabemodus}
\integriereaufgabentrue
```

`\integriereaufgabentrue` ist für eine Ausgabe gedacht, die Theorie, Aufgaben
und die zugehörigen Lösungen gemeinsam enthält. Die Inhaltsdateien verwenden:

```latex
\ifintegriereaufgaben
  % Aufgabenverweise innerhalb der Theorie;
  % Theorieverweise in Aufgaben und Lösungen;
  % unnummerierte Aufgabenüberschriften mit \section*.
\else
  % Eigenständige Theorie- oder Aufgabenhefte;
  % allgemeine Hinweise auf das Skript;
  % nummerierte Aufgabenüberschriften mit \section.
\fi
```

Für ein eigenständiges Theorieheft oder Aufgabenheft lautet die Einstellung:

```latex
\input{../LaTeX/ausgabemodus}
\integriereaufgabenfalse
```

`false` ist auch die Voreinstellung beim Laden der Konfigurationsdatei.
Der boolesche Schalter ist in beiden Zuständen definiert. Deshalb wird sein
Wert direkt mit `\ifintegriereaufgaben` geprüft, nicht mit `\ifdefined`.
Zum Ausschalten wird `\integriereaufgabenfalse` verwendet; der Schalter bleibt
dabei definiert.
Aufgabenhefte verwenden ebenfalls `false`: Sie enthalten Aufgaben und Lösungen,
aber die zugehörige Theorie liegt in einer anderen Ausgabe. Lösungslinks bleiben
in beiden Modi erhalten, sofern eine entsprechende Lösungssammlung vorliegt.

Die tatsächliche Zusammenstellung des PDFs erfolgt weiterhin über die
`\input`-Anweisungen im Hauptdokument. Der Schalter passt die Navigation und
Überschriften an diese Zusammenstellung an. Wird eine integrierte Ausgabe zu
einem reinen Theorieheft umgebaut, müssen deshalb auch die Einbindungen der
Aufgaben und Lösungen angepasst werden.

| Hauptdokumente | Einstellung |
| --- | --- |
| `Mathematik_1_Skript/MA1.tex` | `\integriereaufgabentrue` |
| Mathe-1-Theoriehefte und Symbolübersicht | `\integriereaufgabenfalse` |
| Separate Mathe-1- und Mathe-2-Aufgabenhefte | `\integriereaufgabenfalse` |
| `Mathematik_2_Skript/MA2.tex` | `\integriereaufgabenfalse`; enthält derzeit Theorie aus beiden Modulen |

Der Schalter muss in der Präambel eingestellt werden. Alle eingelesenen
Inhaltsdateien übernehmen diesen Zustand. Eine erneute Definition in den
Inhaltsdateien ist nicht erforderlich. `ausgabemodus.tex` pro Hauptdokument
einmal laden und den relativen Pfad dem Arbeitsverzeichnis anpassen.

## Optionale Abschnittsverweise

Ob ein Theorieabschnitt im PDF vorhanden ist, hängt nicht vom Aufgabenmodus ab.
Die folgenden Befehle prüfen die Querverweisdaten des jeweiligen Dokuments.

```latex
% Verlinkte Abschnittsnummer, wenn vorhanden; andernfalls keinerlei Ausgabe:
\abschnittsverweis{MA1-ableitungsregeln}

% Dasselbe als Randnotiz; ohne Ziel wird auch kein leerer Randkasten angelegt:
\randverweis{MA1-ableitungsregeln}
```

Beide Befehle nehmen genau ein Argument entgegen: das Label.
Es gibt keinen Ersatztext. `\skriptverweis{label}` ist ein gleichbedeutender
Name für `\abschnittsverweis{label}` und zeigt ebenfalls nur die verlinkte Nummer.

In einer Voraussetzungentabelle bleibt bei fehlendem Ziel nur die Referenzzelle
leer. Der Text der Voraussetzung wird weiterhin angezeigt:

```latex
\tabitem Ableitungen bilden & \abschnittsverweis{MA1-ableitungsregeln} \\
```

Für vollständige optionale Hinweise gibt es einen bedingten Textblock:

```latex
Siehe das Skript\wennreferenzvorhanden{MA1-ableitungsregeln}{%
  , Abschnitt \abschnittsverweis{MA1-ableitungsregeln}}.
```

`\wennreferenzvorhanden{label}{Inhalt}` führt den gesamten Inhalt nur aus,
wenn das Label vorhanden ist. Damit lassen sich auch vollständige Sätze,
Fußnoten oder Randnotizen unterdrücken, ohne Satzfragmente zurückzulassen.
Ein Bereich mit zwei Nummern wird nur ausgegeben, wenn beide Ziele vorhanden sind.
Dafür können zwei solche Bedingungen ineinander verschachtelt werden.

Normale `\ref`-, `\eqref`- und `\hyperref`-Befehle bleiben für verbindliche lokale
Ziele wie Gleichungen und Beispiele geeignet. Die optionalen Befehle sind für
Verweise gedacht, deren Ziel bei einer anderen Zusammenstellung fehlen darf.

Nach Änderungen sind mehrere LaTeX-Läufe erforderlich, vorzugsweise mit
`latexmk`. Beim Entfernen eines bisher enthaltenen Abschnitts kann dessen Label
im ersten Lauf noch in der alten Hilfsdatei stehen; die folgenden Läufe räumen
diesen Stand auf. Keine Hilfsdateien einer anderen Ausgabe übernehmen.

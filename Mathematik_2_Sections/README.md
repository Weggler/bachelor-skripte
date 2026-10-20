# Themen- und Aufgabenhefte zu Mathematik 2

Die eigenständig kompilierbaren Hauptdokumente verwenden weiterhin `article`.
Die Aufgabenhefte zu Integration, Taylorreihen, Funktionenräumen, Fourieranalyse,
Differentialgleichungen und Laplacetransformation behalten ihre bisherigen Namen.

Alle Hefte verwenden die gemeinsame Kopfzeile: aktuelle Abschnittsüberschrift,
links, klein, aufrecht und mit normaler Groß- und Kleinschreibung.
Das Inhaltsverzeichnis ist römisch nummeriert, der Inhalt beginnt mit Seite 1.

Beispiel vom Repository-Hauptverzeichnis aus:

```sh
cd Mathematik_2_Sections
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../build/mathematik_2_aufgaben MA2-FR-Aufgaben.tex
```

Die Kursinformationen sind nach
[Kursorganisation/sommersemester_2026](../Kursorganisation/sommersemester_2026)
verschoben.


Die Symbolübersicht `MA2-Symbole.tex` ist ein separates Querformat-Handout mit
vier Seiten. Sie verwendet dieselbe Quelle wie der Anhang des Gesamtskripts.
Wie die Mathe-1-Symbolübersicht trägt sie eine Fußzeile mit Lizenz und Seitenzahl;
auf eine zusätzliche Kopfzeile wird im Querformat verzichtet.

```sh
cd Mathematik_2_Sections
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=../build/mathematik_2_symbole/MA2-Symbole MA2-Symbole.tex
```

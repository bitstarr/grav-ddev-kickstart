---
menu: Markdown
title: Mit Markdown arbeiten
---

Der Editor ist kein <abbr title="What You See Is What You Get">WYSIWYG</abbr> Editor, sondern verwendet das *Markdown* Format. Dabei erfolgt die Formatierung durch bestimmte Zeichenkombinationen. Du kannst die Funktionsleiste für die Arbeit an den Texten nutzen. Durch das Highlighting bekommst du einen Eindruck von der Formatierung.

Schau dir mal den [Wikipedia-Artikel](https://de.wikipedia.org/wiki/Markdown) oder diese [Syntax Übersicht von c’t](https://www.heise.de/downloads/18/1/1/6/7/1/0/3/Markdown-CheatSheet-Deutsch.pdf) an, wenn du mehr darüber wissen willst.

## Das Wichtigste in Kürze

! Wenn du das sog. Gender-Sternchen verwenden willst, musst du es in Markdown „escapen“. Dafür setzt du einen Backslash (`\`) vor das Sternchen (`Nutzer\*innen`). So sagst du der Software, die das Markdown decodiert, dass es sich um ein Sonderzeichen handelt und nicht um den Beginnen einen Abschnitts in `*kursiv*`.

### Absätze und Zeilenumbrüche

Absätze werden automatisch erzeugt, wenn zwischen zwei Textblöcken eine Leerzeile existiert.

```md
Ein Absatz.

Ein weiterer Absatz.
```

Zeilenumbrüche erzeugst du mit **zwei Leerzeichen am Zeilenende**. Das Einfügen eines HTML Zeilenumbruch (`<br>`) ist nicht nötig.

```md
Ich bin ein langer Text, aber ich stoppe hier.  
Das ist eine neue Zeile, aber kein neuer Absatz. Achte auf die Leerzeichen nach dem Punkt der ersten Zeile
```

### Links

```md
[Beschriftung des Hyperlinks](https://de.wikipedia.org/)
```

[Beschriftung des Hyperlinks](https://de.wikipedia.org/)

! Verwende aussagekräftige Link-Texte. „hier” ist besonders bei Verwendung eines Screenreader furchtbar. Wichtig ist auch, dass du bei Links zu Dateien oder anderen Websites, die Nutzer*innen darüber informierst, was auf sie zukommt. Beispiele:<br>
! <br>
! Zur <u>Studie XYZ (PDF, 1,6MB)</u><br>
! Sie finden dazu mehr <u>Informationen bei der BZGA</u><br>
! <u>Download der Arbeitshilfe</u><br>


### Einfache Formate

| Code | Effekt |
| --- | --- |
| `*Text*` | *kursiver Text* |
| `**Text**` | **fetter Text** |
| `***Text***` | ***fetter und kursiver Text*** |


### Listen

```md
* Listeneintrag
* Listeneintrag
    * Listeneintrag
* Listeneintrag

- Listeneintrag
    - Listeneintrag
- Listeneintrag
```

* Listeneintrag
* Listeneintrag
    * Listeneintrag
* Listeneintrag

```md
1. Listeneintrag
1. Listeneintrag
    1. Listeneintrag
1. Listeneintrag
```

1. Listeneintrag
1. Listeneintrag
    1. Listeneintrag
1. Listeneintrag

## Überschriften

```md
## Überschrift Ebene 2
### Überschrift Ebene 3
#### Überschrift Ebene 4
```

Nutze Überschriften um Inhalte zu strukturieren wie in einem Buch. Versuche auf keinen Fall das Styling damit zu beeinflussen, du machst es damit nur schwerer zu erfassen. Frage die Entwickler/innen per Teams, wenn du solche Wünsche hast.

!!!! Bitte nutze niemals die Überschrift erster Ordnung (`# Überschrift`), sie ist für den Seitentitel reserviert und wird nur vom Templates verwendet. Habe auch im Hinterkopf, dass viele Module eine eigene Überschrift der zweiten Ordnung als Modultitel mitbringen. Wenn du Texte Strukturierst, beginne mit der zweiten (`## Überschrift`) oder dritten Ordnung (`### Überschrift`).

## Bilder

Bilder werden wie folgt ausgezeichnet.

```md
![Bild Alt Text](imagename.jpg "Optionaler Title")
```

Für Bildunterschriften gibt es einen [Shortcode](../shortcodes).


### E-Mails gegen Spam sichern

Wenn du im Editor E-Mail-Adressen schreibst, solltest du sie mit einem sogenannten [Shortcode](../shortcodes) vor Spam schützen. Shortcodes können viele Funktionen haben, jetzt geht's aber speziell um den Schutz von E-Mail-Adressen.

```md
E-Mail: [raw][email]test@example.com[/email][/raw]
```
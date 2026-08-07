---
title: Shortcodes
---
Shortcodes erweitern die Funktionen des Editors

## caption

Fügt deinem Medium (Bild, Video, Embed, Audio) eine Bildunterschrift hinzu (über HTML figure+figcaption).

```md
[raw][caption class="image" caption="Quelle: Unsplash.com"]
![](image.jpg)
[/caption][/raw]
```

[caption class="image" caption="Topper Hartley, Maine-Coon"]
![](topper11.jpg)
[/caption]

### small

```md
[raw][small]Foto: Bernd Rippert[/small]
[small muted=1]Foto: Bernd Rippert[/small][/raw]

[raw]Normaler Text mit eingebettetem [small]Kleintext[/small][/raw]
```

[small]Foto: Bernd Rippert[/small]  
[small muted=1]Foto: Bernd Rippert[/small]

Normaler Text mit eingebettetem [small]Kleintext[/small]

### email

Maskiert E-Mail-Adressen mit HTML-Entities, um einen gewissen Spamschutz zu bieten. Der Parameter `link` ist optional und macht aus der Adresse einen `mailto`-Link.

!!!! Wenn E-Mail-Adressen in Editor-Feldern hinterlegt werden, müssen sie immer in einen `email`-Shortcode gehüllt sein, um sie für Spambots unverwertbar zu machen.

```md
[raw][email link=1]Chunkylover53@aol.com[/email][/raw]
```

[email link=1]Chunkylover53@aol.com[/email]


## align

Richtet Text unterschiedlich aus. Mit Vorsicht verwenden.

```md
[raw][center]Zentrierter Text[/center][/raw]
[raw][right]Rechtsbündiger Text[/right][/raw]
[raw][justify]
Blocksatz-Text
[/justify][/raw]
```
[center]Zentrierter Text[/center]

[right]Rechtsbündiger Text[/right]

[justify]
Blocksatz-Text
[/justify]

### icon

Wie im Beispiel zu sehen, ist das erste Wort der [Icon-Name](../icons), optionale Parameter folgen danach.

| Parameter | Auswirkung |
| --- | --- |
| id | Legt eine ID für das SVG-Element fest |
| class | Legt die CSS-Klassen für das SVG-Element fest |
| title | Legt einen Titel fest (Barrierefreiheit) |

```md
[raw][icon=mail title="E-Mail"][/raw]
```

[icon=mail title="E-Mail"]

### lang 

Kennzeichnet Text semantisch in einer anderen Sprache, damit Screenreader ihn korrekt interpretieren und aussprechen können. Standardmäßig wird der Text in ein `div` gepackt, mit dem optionalen Parameter `inline` wird er stattdessen in ein `span` gepackt.

```md
[raw][lang=fr inline=1]Bonjour[/lang][/raw]
[raw][lang=es]
Hola!
[/lang][/raw]
```

[lang=fr inline=1]Bonjour[/lang]

[lang=es]
Hola!
[/lang]

### video

Bindet ein Video von YouTube oder Vimeo mit einem Datenschutz-Hinweis ein. Das Video wird erst geladen (und fordert externe Ressourcen an), wenn Nutzer*innen zustimmen (einmalig oder für die gesamte Website).

! Die CSS- und JS-Dateien dieser Komponente müssen der Verarbeitung hinzugefügt werden. Sie sind unter Umständen nicht standardmäßig aktiviert.

```md
[raw][video=Uuad8V5f_QA]
[video="https://www.youtube.com/watch?v=dQw4w9WgXcQ"]
[video id=dQw4w9WgXcQ]
[video id="https://www.youtube.com/watch?v=dQw4w9WgXcQ"]
[video id=141358 type=vimeo][/raw]
```

[video=dQw4w9WgXcQ]

## raw

Dies ist ein Hilfsmittel, um Shortcodes auf Seiten anzuzeigen, ohne dass sie verarbeitet werden.

```md
[raw][raw][email link=1]Chunkylover53@aol.com[/email][/raw][/raw]
```
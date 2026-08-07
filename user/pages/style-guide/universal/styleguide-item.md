---
title: Universal Komponente
menu: Universal
styleguide:
    status: stable
    template_path: 'modular/universal.html.twig'
---
Die Universal-Komponente ist das Element, das die häufigsten Anwendungsfälle vereint und bietet eine Mischung aus Layout-Optionen und inhaltsabhängiger Darstellung.

Du nutzt sie für reinen Text, einzelnes Bild/Video/Audio oder als Kombination aus Text und Bild/Video/Audio.

## Nur Text

Für die Darstellung eines reinen Textblocks hast du verschiedene Optionen. Du kannst entscheiden, wie viel Breite er auf dem Bildschirm einnehmen kann und ob du ihn in Spalten setzen möchtest (für bessere Lesbarkeit).

## Bild/Video/Audio

Du kannst ein einzelnes Bild, ein Video, ein YouTube- oder Vimeo-Video oder einen Audioplayer (MP3) anzeigen. Wenn du zusätzlich zu einem Video oder einer Audiodatei ein Bild auswählst, wird dieses als Vorschau angezeigt.

Außerdem hast du die Möglichkeit, eine sichtbare **Bildunterschrift** bereitzustellen. Sie wird auch unter Videos und Audio angezeigt, wenn du eine angegeben hast. Sie ist aber optional.

| Bild | Audio/Video | Ext. Video | Ergebnis | 
|---|---|---|---|
| ✔️ | | | Bild wird in der Breite der gewählten Ausdehnung angezeigt |
| ✔️ | 🎵 | | Bild wird in der Breite der gewählten Ausdehnung angezeigt. Ein Audioplayer am unteren Rand und ein Play/Pause-Button liegen darüber. |
| ✔️ | 🎞️ | | Video wird in der Breite der gewählten Ausdehnung angezeigt. Bild wird als Vorschau genutzt, solange der Browser das Video lädt. |
| | 🎵 | | Audioplayer wird in der Breite der gewählten Ausdehnung angezeigt. |
| | 🎞️ | | Video wird in der Breite der gewählten Ausdehnung angezeigt. Die Fläche bleibt schwarz, bis der Browser den ersten Frame des Videos ausmachen kann. |
| | | ✔️ | YouTube/Vimeo-Video (Zwei-Klick-Lösung) wird in der Breite der gewählten Ausdehnung angezeigt. Bilder oder Audio/Video werden ignoriert. Stelle sicher, dass du eine vollständige Video-URL angibst. |

Das Frontend rechnet das Bild noch einmal auf das zur Ausdehnung passende Format herunter. Das Seitenverhältnis des Bildes bleibt unangetastet.

<p class="tip important">
Bitte verwende ausschließlich JPEG-Bilder, außer du hast das Fachwissen, die Performance-Auswirkungen eines PNG im Vergleich zu einem JPEG abzuschätzen. Wird dir nur ein PNG angeliefert, lass es dir in ein optimiertes JPEG (Full-HD oder 1440p und etwa 80% Qualität) umwandeln.<br>
Wenn ein Bild größer als 400KB ist, sollten alle Alarmglocken angehen.
</p>

## Text und Bild/Video/Audio

Du kannst natürlich auch beides haben: Text und Medium!

Alles, was hier vorher über Texte und Medien in Einzeldarstellung geschrieben wurde, gilt auch für die Text+Medien-Darstellung. Nur Text in Spalten geht damit nicht.

Wenn du die Option Nebeneinander nutzt, erscheint das Medium standardmäßig links. Du kannst die Reihenfolge tauschen mit der Option „Reihenfolge umkehren”.

Wenn du die Nebeneinander-Option nicht nutzt, bleibt der Text immer auf der Breite des normalen Content-Wrappers. Von der Ausdehnungs-Option ist nur das Medium betroffen.

## Allgemeine Optionen

| Feld | Typ | Bemerkung |
|---|---|---|
| **Titel** | Text | Überschrift |
| **Editor** | Markdown | Textinhalt |
| **Seiten-Medien** | Medien | Hochladen von Medien |

### Medien

Es können unterschiedliche Medientypen angezeigt werden. Du triffst hier die Auswahl des Typs und welches Medium es konkret sein soll.

| Feld | Typ | Bemerkung |
|---|---|---|
| **Bild** | Medien-Auswahl | Auswahl des Bildes |
| **Audio/Video** | Medien-Auswahl | Auswahl einer Audio- oder Video-Datei |
| **Externes Video (YouTube/Vimeo)** | Text | URL zum externen Video (unnötige Parameter aus der URL löschen!) |
| **Bildunterschrift** | Text | Bild- bzw. Medienunterschrift oder -Erklärung |

### „Call to Action“ Link

Der Call to Action wird am Ende des Texts angezeigt. Wenn du ihn nutzen möchtest, müssen Link-Text und eine der Ziel-Optionen genutzt werden. Bei einer **Nur-Medien**-Konfiguration wird **kein Call to Action** angezeigt.

| Feld | Typ | Bemerkung |
|---|---|---|
| **Link-Text** | Text | Call-to-Action-Button-Beschriftung, optional |
| **Seite** | Seiten-Auswahl | Ziel-Seite |
| **URL** | Text | Link-Ziel außerhalb der Seite oder Sprungmarke |

### Layout-Optionen

| Feld | Typ | Bemerkung |
|---|---|---|
| **Überschrift verbergen** | Ja/Nein |  Überschrift wird nicht ausgegeben |
| **Ausbreitung** | Auswahl | Wie viel Platz nimmt das Element ein? |
| **Nebeneinander** | Ja/Nein | Spezifisch für Text+Medium. Stellt das Medium neben dem Text dar. Standard ist Medium über Text. |
| **Reihenfolge umkehren** | Ja/Nein | Spezifisch für Text+Medium. Wenn aktiviert, folgt das Medium auf den Text; standardmäßig steht das Medium zuerst. Nur in Kombination mit „Nebeneinander” |
| **Spalten/Lesbarkeit** | Auswahl | Spezifisch für Nur-Text. Text in Spalten setzen oder Laufweite begrenzen. |

#### Erläuterung zu Ausdehnung

| Option | Auswirkung |
|---|---|
| Standard | Element ist so breit wie normaler Content (Wrapper) |
| Breiter | Element steht etwas über den Content-Wrapper heraus, um visuelle Spannung zu erzeugen |
| Volle Breite | Element geht über die gesamte Bildschirmbreite. Texte haben trotzdem einen Mindestabstand zum Bildschirmrand |

#### Erläuterung zu Lesbarkeit

<p class="tip">
Dein Text wird über die ganze Breite der ausgewählten Ausdehnung angezeigt. Schon in der Standardbreite ist er aber nicht so gut lesbar, weil die Zeilen zu lang sind. Verwende Spalten oder die Einstellung Lesbarkeit.
</p>

Unter **Spalten/Lesbarkeit** hast du Optionen, die die Spaltenbreite festlegen. Die Anzahl dient zur Orientierung bei Standard-Ausdehnung.

In Kombination mit **Ausdehnung** kannst du das Aussehen weiter anpassen, um deine Seite visuell abwechslungsreicher zu machen.



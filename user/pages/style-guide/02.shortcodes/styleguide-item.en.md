---
title: Shortcodes
---
Shortcodes extend the editor's functions

## caption

Adds a caption (via HTML figure+figcaption) to your media (image, video, embed, audio).

```md
[raw][caption class="image" caption="Source: Unsplash.com"]
![](image.jpg)
[/caption][/raw]
```

[caption class="image" caption="Topper Hartley, Maine-Coon"]
![](topper11.jpg)
[/caption]

### small

```md
[raw][small]Photo: Bernd Rippert[/small]
[small muted=1]Photo: Bernd Rippert[/small][/raw]

[raw]Normal Text with [small]Small Text[/small] embeded[/raw]
```

[small]Photo: Bernd Rippert[/small]  
[small muted=1]Photo: Bernd Rippert[/small]

Normal Text with [small]Small Text[/small] embeded

### email

Mask emails with HTML entities to give some spam protection. `link` parameter is optional and makes the address a `mailto` link.

!!!! When email addresses are entered into editor fields, they must always be wrapped in an `email` shortcode to reduce their usability for spambots.

```md
[raw][email link=1]Chunkylover53@aol.com[/email][/raw]
```

[email link=1]Chunkylover53@aol.com[/email]


## align

Make text aligned differently. Use with caution.

```md
[raw][center]Centered Text[/center][/raw]
[raw][right]right aligned Text[/right][/raw]
[raw][justify]
Justified Text
[/justify][/raw]
```
[center]Centered Text[/center]

[right]right aligned Text[/right]

[justify]
Justified Text
[/justify]

### icon

As seen in the example the first word is the [icon name](../icons), optional parameters follow after that.

| Paramter | Effect |
| --- | --- |
| id | Set an ID for the SVG element |
| class | Set the CSS classes for the SVG element |
| title | Set a title (accessability) |

```md
[raw][icon=mail title="E-Mail"][/raw]
```

[icon=mail title="E-Mail"]

### lang 

Wrap text in a different language semantically, so screenreader can interpret and pronounce it correctly. By default it wraps the text in a `div`, adding the optional `inline` parameter wraps it in a `span`.

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

Embed a video from YouTube or Vimeo with a privacy alert. The video will only load (and request external resources) if the user affirms (once or for the whole site).

! This components CSS and JS need to be added to processing. They might not be enabled by default.

```md
[raw][video=Uuad8V5f_QA]
[video="https://www.youtube.com/watch?v=dQw4w9WgXcQ"]
[video id=dQw4w9WgXcQ]
[video id="https://www.youtube.com/watch?v=dQw4w9WgXcQ"]
[video id=141358 type=vimeo][/raw]
```

[video=dQw4w9WgXcQ]

## raw

This is a helper to show shortcodes in pages without getting them processed.

```md
[raw][raw][email link=1]Chunkylover53@aol.com[/email][/raw][/raw]
```
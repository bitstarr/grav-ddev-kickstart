---
title: Universal Component
menu: Universal
styleguide:
    status: stable
    template_path: 'modular/universal.html.twig'
---
The Universal Component is the element that combines the most common use cases and offers a mix of layout options and content-dependent display.

You use it for text-only, image/video/audio-only, or as text combined with image/video/audio.

## Text only

For displaying a pure text block you have various options. You can decide how much width it takes up on the screen and whether you want to set it in columns (for better readability).

## Image/Video/Audio

You can display a single image, a video, a YouTube or Vimeo video, or an audio player (MP3). If you select an image in addition to a video or audio file, it is displayed as a preview.

You also have the option to provide a visible **caption**. It is also displayed under videos and audio if you have specified one. However, it is optional.

| Image | Audio/Video | Ext. video | Result | 
|---|---|---|---|
| ✔️ | | | Image is displayed at the width of the selected extent |
| ✔️ | 🎵 | | Image is displayed at the width of the selected extent. An audio player at the bottom edge and a play/pause button sit on top of it. |
| ✔️ | 🎞️ | | Video is displayed at the width of the selected extent. Image is used as a preview while the browser loads the video. |
| | 🎵 | | Audio player is displayed at the width of the selected extent. |
| | 🎞️ | | Video is displayed at the width of the selected extent. The area stays black until the browser can determine the first frame of the video. |
| | | ✔️ | YouTube/Vimeo video (two-click solution) is displayed at the width of the selected extent. Images or audio/video are ignored. Make sure you provide a complete video URL. |

The frontend downsizes the image again to the format matching the extent. The image's aspect ratio remains untouched.

<p class="tip important">
Please use only JPEG images, unless you have the expertise to assess the performance impact of a PNG compared to a JPEG. If you're only supplied with a PNG, have it converted to an optimized JPEG (Full HD or 1440p and about 80% quality).<br>
If an image is larger than 400KB, all alarm bells should be going off.
</p>

## Text and image/video/audio

Of course, you can also have both: text and medium!

Everything written above about text and media in individual display also applies to the text+media display. Only text in columns is not possible with this.

If you use the side-by-side option, the medium appears on the left by default. You can swap the order with the "Reverse order" option.

If you don't use the side-by-side option, the text always stays at the width of the normal content wrapper. The extent option only affects the medium.

## General options

| Field | Type | Note |
|---|---|---|
| **Title** | Text | Heading |
| **Editor** | Markdown | Text content |
| **Page media** | Media | Upload for media |

### Media

We can display different media types. Here you choose the type and which medium it should specifically be.

| Field | Type | Note |
|---|---|---|
| **Image** | Media selection | Choice of image |
| **Audio/Video** | Media selection | Choice of an audio or video file |
| **External video (YouTube/Vimeo)** | Text | URL to the external video (remove unnecessary parameters from the URL!) |
| **Caption** | Text | Image or media caption or explanation |

### "Call to Action" link

The call to action is displayed at the end of the text. With a **Media Only** configuration, **no call to action** is displayed. If you want to use it, link text and one of the target options must be used.

| Field | Type | Note |
|---|---|---|
| **Link text** | Text | Call to action button label, optional |
| **Page** | Page selection | Target page |
| **URL** | Text | Link target outside the page, or an anchor |

### Layout options

| Field | Type | Note |
|---|---|---|
| **Hide heading** | Yes/No |  Heading is not output |
| **Extent** | Selection | How much space does the element take up? |
| **Side by side** | Yes/No | Specific to text+medium. Displays the medium next to the text. Default is medium above image. |
| **Reverse order** | Yes/No | Specific to text+medium. When enabled, the medium follows the text; by default the medium comes first. Only in combination with "Side by side" |
| **Columns/Readability** | Selection | Specific to text-only. Set text in columns, or limit line length. |

#### Explanation of extent

| Option | Effect |
|---|---|
| Default | Element is as wide as normal content (wrapper) |
| Wider | Element extends slightly beyond the content wrapper to create visual tension |
| Full width | Element spans the entire screen width. Text still keeps a minimum distance from the screen edge |

#### Explanation of readability

<p class="tip">
Your text is displayed across the full width of the selected extent. Even at the default width, though, it isn't very readable because the lines are too long. Use columns or the readability setting.
</p>

Under **Columns/Readability** you have options that determine the column width. The number serves as a guide for the default extent.

In combination with **Extent** you can further adjust the appearance to make your page more visually varied.
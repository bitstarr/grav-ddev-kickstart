---
menu: Markdown
title: Working with Markdown
---

The editor is not a <abbr title="What You See Is What You Get">WYSIWYG</abbr> editor, but uses the *Markdown* format. Formatting is applied through specific character combinations. You can use the toolbar to help you work on your texts. The syntax highlighting gives you an impression of the formatting.

Take a look at the [Wikipedia article](https://de.wikipedia.org/wiki/Markdown) or this [Markdown cheat sheet from c't](https://www.heise.de/downloads/18/1/1/6/7/1/0/3/Markdown-CheatSheet-Deutsch.pdf) (both in German) if you want to know more about it.

## The essentials in brief

! If you want to use the so-called gender asterisk, you need to "escape" it in Markdown. To do this, place a backslash (`\`) before the asterisk (`user\*s`). This tells the software decoding the Markdown that it's a special character and not the start of an *italic* section.

### Paragraphs and line breaks

Paragraphs are created automatically when there's a blank line between two blocks of text.

```md
A paragraph.

Another paragraph.
```

You create line breaks with **two spaces at the end of the line**. Inserting an HTML line break (`<br>`) is not necessary.

```md
I am a long text, but I stop here.  
This is a new line, but not a new paragraph. Note the spaces after the period at the end of the first line
```

### Links

```md
[Hyperlink label](https://de.wikipedia.org/)
```

[Hyperlink label](https://de.wikipedia.org/)

! Use meaningful link text. "here" is particularly awful when using a screen reader. It's also important that, for links to files or other websites, you let users know what to expect. Examples:<br>
! <br>
! To the <u>XYZ study (PDF, 1.6MB)</u><br>
! Find out more <u>information at the BZGA</u><br>
! <u>Download the guide</u><br>


### Simple formats

| Code | Effect |
| --- | --- |
| `*Text*` | *italic text* |
| `**Text**` | **bold text** |
| `***Text***` | ***bold and italic text*** |


### Lists

```md
* List item
* List item
    * List item
* List item

- List item
    - List item
- List item
```

* List item
* List item
    * List item
* List item

```md
1. List item
1. List item
    1. List item
1. List item
```

1. List item
1. List item
    1. List item
1. List item

## Headings

```md
## Heading level 2
### Heading level 3
#### Heading level 4
```

Use headings to structure content like in a book. Never try to use them to influence styling — that only makes the content harder to grasp. Ask the developers via Teams if you have requests like that.

!!!! Please never use the first-level heading (`# Heading`), it's reserved for the page title and only used by templates. Also keep in mind that many modules come with their own second-level heading as the module title. When structuring text, start with the second (`## Heading`) or third level (`### Heading`).

## Images

Images are marked up as follows.

```md
![Image alt text](imagename.jpg "Optional title")
```

There is a [shortcode](../shortcodes) for image captions.


### Protecting emails from spam

When you write email addresses in the editor, you should protect them from spam using a so-called [shortcode](../shortcodes). Shortcodes can have many functions, but here we're specifically talking about protecting email addresses.

```md
Email: [raw][email]test@example.com[/email][/raw]
```
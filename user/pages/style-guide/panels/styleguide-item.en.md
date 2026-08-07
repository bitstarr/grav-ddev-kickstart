---
title: Panels
styleguide:
    status: stable
    template_path: 'modular/panels.html.twig'
---

Two-column block loosely inspired by comic panels. You can combine 3 images, with one image displayed very large and square.

## Fields

| Field | Type | Note |
|---|---|---|
| **Heading** | Text | Not displayed, helps with orientation in the admin |
| **Page media** | Page media | The panel's images — order can be sorted via drag & drop, the first image is always the one displayed large |
| **Position of the large image** | Selection | Left/Right/Top/Bottom, default: Left |
| **Extent** | Selection | How much space does the element take up? |
| **Published** | Yes/No | Visibility of the module |

### Explanation of extent

| Option | Effect |
|---|---|
| Default | Element is as wide as normal content (wrapper) |
| Wider | Element extends slightly beyond the content wrapper to create visual tension |
| Full width | Element spans the entire screen width. Text still keeps a minimum distance from the screen edge |
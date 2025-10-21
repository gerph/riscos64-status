# Module: WindowManager (Icon Rendering)

## Summary

The WindowManager's icon rendering is a core part of the render system used
to redraw windows. It builds upon the text rendering support of the Window Manager
and the handling of sprites within the sprite pool and the user sprites.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)


---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Plain borders |
| [ ]      | [ ]       | Filled background (desktop colours) |
| [ ]      | [ ]       | Text in desktop font (system font) |
| [ ]      | [ ]       | Text in desktop font (antialiased) |
| [ ]      | [ ]       | Coloured text (desktop colours) |
| [ ]      | [ ]       | Text in icon |
| [ ]      | [ ]       | Text in icon (12 chars) |
| [ ]      | [ ]       | Text indirected |
| [ ]      | [ ]       | Sprite in icon |
| [ ]      | [ ]       | Sprite indirected (wimp pool) |
| [ ]      | [ ]       | Sprite indirected (window pool) |
| [ ]      | [ ]       | Text+Sprite in icon |
| [ ]      | [ ]       | Text+Sprite indirected (no S validation) |
| [ ]      | [ ]       | Text+Sprite indirected (with S validation) |
| [ ]      | [ ]       | Text left aligned |
| [ ]      | [ ]       | Text right aligned |
| [ ]      | [ ]       | Text centre aligned |
| [ ]      | [ ]       | Text+Sprite left aligned |
| [ ]      | [ ]       | Text+Sprite right aligned |
| [ ]      | [ ]       | Selected icon (colouring) |
| [ ]      | [ ]       | Selected icon (text) |
| [ ]      | [ ]       | Selected icon (sprite) |
| [ ]      | [ ]       | Selected icon (sprite, with alternate) |
| [ ]      | [ ]       | Small sprites |
| [ ]      | [ ]       | Shaded icon without text |
| [ ]      | [ ]       | Shaded icon text |
| [ ]      | [ ]       | Shaded icon text and fill |
| [ ]      | [ ]       | Shaded icon sprite |
| [ ]      | [ ]       | Shaded icon sprite and text |
| [ ]      | [ ]       | Shaded icon sprite and text |
| [ ]      | [ ]       | Shaded icon sprite, text and fill |
| [ ]      | [ ]       | R1 validation |
| [ ]      | [ ]       | R2 validation |
| [ ]      | [ ]       | R3 validation |
| [ ]      | [ ]       | R4 validation |
| [ ]      | [ ]       | R5 validation |
| [ ]      | [ ]       | R6 validation |
| [ ]      | [ ]       | R7 validation |
| [ ]      | [ ]       | R validation with wimp colour specifiers |
| [ ]      | [ ]       | Text with true colour (C validation) |
| [ ]      | [ ]       | Filled with true colour (C validation) |
| [ ]      | [ ]       | Bordered with true colour (C validation) |
| [ ]      | [ ]       | R validation with true colour (C validation) |
| [ ]      | [ ]       | Password (D validation) |
| [ ]      | [ ]       | Font icons (F validation) |
| [ ]      | [ ]       | Multi-line (L validation) |
| [ ]      | [ ]       | Multi-line (L validation + line spacing) |
| [ ]      | [ ]       | Colourmap (T validation) |
| [ ]      | [ ]       | Overlong text does not show outside icon |
| [ ]      | [ ]       | Oversized sprite does not show outside icon |
| [ ]      | [ ]       | Border fill calls IconBorder filter |
| [ ]      | [ ]       | Border sizing calls IconBorder filter |
| [ ]      | [ ]       | Border outline calls IconBorder filter |
| [ ]      | [ ]       | Border colouring calls IconBorder filter |
| [ ]      | [ ]       | `Wimp_PlotIcon` plot outside of redraw loop |
| [ ]      | [ ]       | `Wimp_PlotIcon` plot with window supplied ('KSAT') |


For icon positioning table, consult: https://www.riscosopen.org/forum/forums/5/topics/18886

### Commands

*None*



### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Wimp_PlotIcon` (&400E2) |


### Services


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors

*None*


### Events


*None*


### UpCalls


*None*


### Modules


*None*



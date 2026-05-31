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
| [X]      | [X]       | Plain borders |
| [X]      | [X]       | Filled background (desktop colours) |
| [X]      | [ ]       | Text in desktop font (system font) |
| [X]      | [X]       | Text in desktop font (antialiased) |
| [X]      | [X]       | Coloured text (desktop colours) |
| [X]      | [X]       | Text in icon |
| [ ]      | [ ]       | Text in icon (12 chars) |
| [X]      | [X]       | Text indirected |
| [X]      | [ ]       | Sprite in icon |
| [X]      | [ ]       | Sprite indirected (wimp pool) |
| [ ]      | [ ]       | Sprite indirected (window pool) |
| [X]      | [X]       | Text+Sprite in icon |
| [X]      | [ ]       | Text+Sprite indirected (no S validation) |
| [X]      | [X]       | Text+Sprite indirected (with S validation) |
| [X]      | [X]       | Text left aligned |
| [X]      | [X]       | Text right aligned |
| [X]      | [X]       | Text centre aligned |
| [X]      | [X]       | Text+Sprite left aligned |
| [X]      | [X]       | Text+Sprite right aligned |
| [X]      | [X]       | Selected icon (colouring) |
| [X]      | [X]       | Selected icon (text) |
| [X]      | [X]       | Selected icon (sprite) |
| [X]      | [X]       | Selected icon (sprite, with alternate) |
| [X]      | [X]       | Small sprites |
| [X]      | [X]       | Shaded icon without text |
| [X]      | [X]       | Shaded icon text |
| [X]      | [X]       | Shaded icon text and fill |
| [X]      | [X]       | Shaded icon sprite |
| [ ]      | [ ]       | Shaded icon sprite and text, no fill |
| [X]      | [X]       | Shaded icon sprite, text and fill |
| [X]      | [X]       | R1 validation |
| [X]      | [X]       | R2 validation |
| [X]      | [X]       | R3 validation |
| [X]      | [X]       | R4 validation |
| [X]      | [X]       | R5 validation |
| [X]      | [X]       | R6 validation |
| [X]      | [X]       | R7 validation |
| [X]      | [X]       | R validation with wimp colour specifiers |
| [X]      | [X]       | Text with true colour (C validation) |
| [X]      | [X]       | Filled with true colour (C validation) |
| [X]      | [X]       | Bordered with true colour (C validation) |
| [ ]      | [ ]       | R validation with true colour (C validation) |
| [X]      | [X]       | Password (D validation) |
| [ ]      | [ ]       | Font icons (F validation) |
| [X]      | [X]       | Multi-line (L validation) |
| [X]      | [X]       | Multi-line+Sprite (L validation) |
| [X]      | [X]       | Multi-line, left aligned (L validation) |
| [X]      | [X]       | Multi-line, right aligned (L validation) |
| [X]      | [X]       | Multi-line, centre aligned (L validation) |
| [X]      | [X]       | Multi-line, bottom aligned (L validation) |
| [ ]      | [ ]       | Multi-line (L validation + line spacing) |
| [ ]      | [ ]       | Colourmap (T validation) |
| [X]      | [X]       | Overlong text does not show outside icon |
| [ ]      | [ ]       | Oversized sprite does not show outside icon |
| [ ]      | [ ]       | Border fill calls IconBorder filter |
| [ ]      | [ ]       | Border sizing calls IconBorder filter |
| [ ]      | [ ]       | Border outline calls IconBorder filter |
| [ ]      | [ ]       | Border colouring calls IconBorder filter |
| [X]      | [X]       | `Wimp_PlotIcon` plot outside of redraw loop |
| [X]      | [X]       | `Wimp_PlotIcon` plot with window supplied ('KSAT') |


For icon positioning table, consult: https://www.riscosopen.org/forum/forums/5/topics/18886

### Commands

*None*



### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `WimpPlotIcon_PlotIcon` (&400E2) (Dummy module) |
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



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
| [X]      | [ ]       | Text in desktop font (system font) |
| [X]      | [ ]       | Text in desktop font (antialiased) |
| [X]      | [ ]       | Coloured text (desktop colours) |
| [X]      | [ ]       | Text in icon |
| [ ]      | [ ]       | Text in icon (12 chars) |
| [X]      | [ ]       | Text indirected |
| [X]      | [ ]       | Sprite in icon |
| [X]      | [ ]       | Sprite indirected (wimp pool) |
| [ ]      | [ ]       | Sprite indirected (window pool) |
| [X]      | [ ]       | Text+Sprite in icon |
| [X]      | [ ]       | Text+Sprite indirected (no S validation) |
| [X]      | [ ]       | Text+Sprite indirected (with S validation) |
| [X]      | [ ]       | Text left aligned |
| [X]      | [ ]       | Text right aligned |
| [X]      | [ ]       | Text centre aligned |
| [X]      | [ ]       | Text+Sprite left aligned |
| [X]      | [ ]       | Text+Sprite right aligned |
| [ ]      | [ ]       | Selected icon (colouring) |
| [ ]      | [ ]       | Selected icon (text) |
| [ ]      | [ ]       | Selected icon (sprite) |
| [ ]      | [ ]       | Selected icon (sprite, with alternate) |
| [X]      | [ ]       | Small sprites |
| [ ]      | [ ]       | Shaded icon without text |
| [ ]      | [ ]       | Shaded icon text |
| [ ]      | [ ]       | Shaded icon text and fill |
| [ ]      | [ ]       | Shaded icon sprite |
| [ ]      | [ ]       | Shaded icon sprite and text |
| [ ]      | [ ]       | Shaded icon sprite and text |
| [ ]      | [ ]       | Shaded icon sprite, text and fill |
| [X]      | [ ]       | R1 validation |
| [X]      | [ ]       | R2 validation |
| [X]      | [ ]       | R3 validation |
| [X]      | [ ]       | R4 validation |
| [X]      | [ ]       | R5 validation |
| [X]      | [ ]       | R6 validation |
| [X]      | [ ]       | R7 validation |
| [X]      | [ ]       | R validation with wimp colour specifiers |
| [X]      | [ ]       | Text with true colour (C validation) |
| [X]      | [ ]       | Filled with true colour (C validation) |
| [X]      | [ ]       | Bordered with true colour (C validation) |
| [ ]      | [ ]       | R validation with true colour (C validation) |
| [X]      | [ ]       | Password (D validation) |
| [ ]      | [ ]       | Font icons (F validation) |
| [X]      | [ ]       | Multi-line (L validation) |
| [ ]      | [ ]       | Multi-line (L validation + line spacing) |
| [ ]      | [ ]       | Colourmap (T validation) |
| [ ]      | [ ]       | Overlong text does not show outside icon |
| [ ]      | [ ]       | Oversized sprite does not show outside icon |
| [ ]      | [ ]       | Border fill calls IconBorder filter |
| [ ]      | [ ]       | Border sizing calls IconBorder filter |
| [ ]      | [ ]       | Border outline calls IconBorder filter |
| [ ]      | [ ]       | Border colouring calls IconBorder filter |
| [ ]      | [ ]       | `Wimp_PlotIcon` plot outside of redraw loop |
| [X]      | [ ]       | `Wimp_PlotIcon` plot with window supplied ('KSAT') |


For icon positioning table, consult: https://www.riscosopen.org/forum/forums/5/topics/18886

### Commands

*None*



### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `WimpPlotIcon_PlotIcon` (&400E2) (Dummy module) |
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



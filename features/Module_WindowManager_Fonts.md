# Module: WindowManager (Fonts)

## Summary

The Fonts in the Window Manager are handled in a special way because of the use
of system fonts or antialiased fonts, and the use of the C1 control code range
for window furniture. The implementation here will lead into the work towards
the TextRender subcomponent.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | System font character definition |
| [ ]      | [ ]       | NVRAM configuration of font |
| [ ]      | [ ]       | Wimp$Font system variable |
| [ ]      | [ ]       | Wimp$FontSize system variable |
| [ ]      | [ ]       | Wimp$FontWidth system variable |
| [ ]      | [ ]       | System font use |
| [ ]      | [ ]       | Antialiased font use |
| [ ]      | [ ]       | Symbol substitution |


### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Configure WimpFont` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Wimp_ReadSysInfo` (&400F2) |
| [ ]      | [ ]       | `Wimp_SetFontColours` (&400F3) |
| [ ]      | [ ]       | `Wimp_SetColourMapping` (&400F8) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModeChange` |
| [ ]      | [ ]       | `Service_SwitchingOutputToSprite` |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `Font`



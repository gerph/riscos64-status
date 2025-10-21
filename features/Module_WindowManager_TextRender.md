# Module: WindowManager (Text rendering)

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Text rendering |
| [ ]      | [ ]       | Text sizing |
| [ ]      | [ ]       | Text colouring |
| [ ]      | [ ]       | Wimp$Font* honoured |
| [ ]      | [ ]       | System font rendering |
| [ ]      | [ ]       | Default font from NVRAM |
| [ ]      | [ ]       | Symbol substitution |

### Commands

*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Wimp_TextColour` (&400F0) |
| [ ]      | [ ]       | `Wimp_SetFontColours` (&400F3) |
| [ ]      | [ ]       | `Wimp_TextOp` (&400F9) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 8` (&400F2) |


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


* `ColourTrans`
* `Font`

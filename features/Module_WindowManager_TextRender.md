# Module: WindowManager (Text rendering)

## Summary

The text rendering within the WindowManager is a big part of how icons
are drawn, and affects the operations that can be used on the rest of the
system. Text rendering can be initially implemented in the form of the
`Wimp_TextOp` operations, and then expanded to be used by other parts of
the system.


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Text rendering |
| [X]      | [X]       | Text sizing |
| [X]      | [X]       | Text colouring |
| [X]      | [X]       | Text uses WimpSymbols font |
| [X]      | [X]       | Wimp$Font* honoured |
| [X]      | [X]       | System font rendering |
| [X]      | [X]       | System font rendering with scaling |
| [X]      | [X]       | Default font from NVRAM |
| [X]      | [X]       | Truncate with ellipsis |
| [X]      | [X]       | Read split point |
| [ ]      | [ ]       | Handle right-to-left text |

### Commands

*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Wimp_TextColour` (&400F0) |
| [X]      | [X]       | `Wimp_SetFontColours` (&400F3) |
| [X]      | [X]       | `Wimp_TextOp` (&400F9) |
| [X]      | [X]       | `Wimp_ReadSysInfo 8` (&400F2) |


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

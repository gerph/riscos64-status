# Module: WindowManager (Introspection)

The WindowManager provides a few calls for reading information about itself
and the system's configuration. These can largely be implemented before the
functions themselves, providing dummy or error responses.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Wimp_ReadSysInfo 0` (Tasks Active) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 1` (Mode) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 2` (Read Sprite Suffix) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 3` (Desktop State) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 4` (Write Direction) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 5` (Current Task) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 6` (Swapping) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 7` (Wimp Version) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 8` (System Font) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 9` (Tool Sprites) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 10` (IconBar) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 11` (App Space Size) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 12` (Messages Debug) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 13` (Memory Debug) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 14` (Translation Tables) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 15` (Iconise Button) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 16` (Base Of Sprites) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 17` (Scroll Pause) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 18` (Task Pollword) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 19` (Base Of Sprites2) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 20` (Special Highlights) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 21` (Text Selections) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 22` (Cursor Colour) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 23` (Drag Move Delay) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 24` (DClick Move Delay) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 25` (Auto-Menu Delays) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 26` (Iconbar Scrolling) |
| [ ]      | [ ]       | `Wimp_ReadSysInfo 27` (Edge Notify Delay) |


### Commands

*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Wimp_ReadSysInfo` (&400F2) |


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

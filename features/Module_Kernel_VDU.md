# Module: Kernel (VDU)

## Overview

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component provides the handling for the VDU character
handling. This is a huge area, and there will be many things that will not
be able to be implemented easily. However, basic functionality is all that
will be required for most simple programs to run.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/softvecs.html)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | VDU characters in VDU 4 call text render |
| [ ]      | [ ]       | VDU characters in VDU 5 call graphics render |
| [ ]      | [ ]       | Default character definitions are set on start |
| [ ]      | [ ]       | `VDU 0` (do nothing) |
| [ ]      | [ ]       | `VDU 1` (Printer write char) |
| [ ]      | [ ]       | `VDU 2` (Printer enable) |
| [ ]      | [ ]       | `VDU 3` (Printer disable) |
| [ ]      | [ ]       | `VDU 4` (Split cursors) |
| [ ]      | [ ]       | `VDU 5` (Join cursors) |
| [ ]      | [ ]       | `VDU 6` (Output enable) |
| [ ]      | [ ]       | `VDU 7` (System bell) |
| [ ]      | [ ]       | `VDU 8` (Write backspace) |
| [ ]      | [ ]       | `VDU 9` (Write horizontal tab) |
| [ ]      | [ ]       | `VDU 10` (Write line feed) |
| [ ]      | [ ]       | `VDU 11` (Write vertical tab) |
| [ ]      | [ ]       | `VDU 12` (Clear text) |
| [ ]      | [ ]       | `VDU 13` (Write carriage return) |
| [ ]      | [ ]       | `VDU 14` (Paged enable) |
| [ ]      | [ ]       | `VDU 15` (Paged disable) |
| [ ]      | [ ]       | `VDU 16` (Clear graphics) |
| [ ]      | [ ]       | `VDU 17` (Set text colour) |
| [ ]      | [ ]       | `VDU 18` (Set graphics colour) |
| [ ]      | [ ]       | `VDU 19` (External palette set) |
| [ ]      | [ ]       | `VDU 20` (Colours reset) |
| [ ]      | [ ]       | `VDU 21` (Output disable) |
| [ ]      | [ ]       | `VDU 22` (Set mode) |
| [ ]      | [ ]       | `VDU 23` (Define...) |
| [ ]      | [ ]       | `VDU 23, 1`        (Cursor flash) |
| [ ]      | [ ]       | `VDU 23, 2`        (ECF pattern) |
| [ ]      | [ ]       | `VDU 23, 3`        (ECF pattern) |
| [ ]      | [ ]       | `VDU 23, 4`        (ECF pattern) |
| [ ]      | [ ]       | `VDU 23, 5`        (ECF pattern) |
| [ ]      | [ ]       | `VDU 23, 6`        (Dot pattern) |
| [ ]      | [ ]       | `VDU 23, 7`        (Text scroll) |
| [ ]      | [ ]       | `VDU 23, 8`        (Text clear) |
| [ ]      | [ ]       | `VDU 23, 9`        (Flash duration) |
| [ ]      | [ ]       | `VDU 23, 10`       (Flash duration) |
| [ ]      | [ ]       | `VDU 23, 11`       (ECF default) |
| [ ]      | [ ]       | `VDU 23, 12`       (ECF simple pattern) |
| [ ]      | [ ]       | `VDU 23, 13`       (ECF simple pattern) |
| [ ]      | [ ]       | `VDU 23, 14`       (ECF simple pattern) |
| [ ]      | [ ]       | `VDU 23, 15`       (ECF simple pattern) |
| [ ]      | [ ]       | `VDU 23, 16`       (Text movement) |
| [ ]      | [ ]       | `VDU 23, 17, 0`    (Set text tint) |
| [ ]      | [ ]       | `VDU 23, 17, 1`    (Set text tint) |
| [ ]      | [ ]       | `VDU 23, 17, 2`    (Set graphics tint) |
| [ ]      | [ ]       | `VDU 23, 17, 3`    (Set graphics tint) |
| [ ]      | [ ]       | `VDU 23, 17, 4`    (ECF interpretation) |
| [ ]      | [ ]       | `VDU 23, 17, 5`    (Text invert) |
| [ ]      | [ ]       | `VDU 23, 17, 6`    (ECF origin) |
| [ ]      | [ ]       | `VDU 23, 17, 7`    (Graphics charsize) |
| [ ]      | [ ]       | `VDU 23, 18, 0`    (Teletext transparency) |
| [ ]      | [ ]       | `VDU 23, 18, 1`    (Teletext updates) |
| [ ]      | [ ]       | `VDU 23, 18, 2`    (Teletext reveal) |
| [ ]      | [ ]       | `VDU 23, 18, 3`    (Teletext black enable) |
| [ ]      | [ ]       | `VDU 23, 18, 16`   (Teletext quality) |
| [ ]      | [ ]       | `VDU 24` (Set graphics window) |
| [ ]      | [ ]       | `VDU 25` (Plot) |
| [ ]      | [ ]       | `VDU 26` (Window reset) |
| [ ]      | [ ]       | `VDU 27` (No op) |
| [ ]      | [ ]       | `VDU 28` (Set text window) |
| [ ]      | [ ]       | `VDU 29` (Origin set) |
| [ ]      | [ ]       | `VDU 30` (Home) |
| [ ]      | [ ]       | `VDU 31` (Set text position) |
| [ ]      | [ ]       | `VDU 127` (Write delete) |
| [ ]      | [ ]       | Teletext operations go to teletext driver |
| [ ]      | [ ]       | Text windowing honoured |
| [ ]      | [ ]       | Character forwards/backwards movement honoured |
| [ ]      | [ ]       | Line forwards/backwards movement honoured |
| [ ]      | [ ]       | Paged line count handled |
| [ ]      | [ ]       | Always trims character to 8-bit |
| [ ]      | [ ]       | Always trims to 8-bit |
| [ ]      | [ ]       | Character destination: disabled |
| [ ]      | [ ]       | Character destination: VDUXV |
| [ ]      | [ ]       | Character destination: Force printer |
| [ ]      | [ ]       | Character destination: Serial |
| [ ]      | [ ]       | Character destination: No spool |
| [ ]      | [ ]       | Cursor flashing |

Note: There are a lot of operations missing here, not least of which:

* Colour selection in different modes.
* Colour selection for borders
* Graphics operations being passed to graphics system (OS_Plot)
* VDU parameters read by OS_ReadVduVariables
* Palettes
* Text state preservation
* Changing destination (*FX2 / 3?)


### Commands


*None*


### SWIs


*None*



### Services

*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `WrchV` |


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
| [ ]      | [ ]       | `VideoV` |


### Events


*None*


### UpCalls


*None*


### Modules


*None*



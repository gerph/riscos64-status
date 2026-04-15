# Module: OSSWIs

## Discovered features


* Has kernel collusion
* Uses console output
* Uses graphics output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_Confirm` handles keyboard |
| [ ]      | [ ]       | `OS_Confirm` handles mouse |
| [ ]      | [ ]       | `OS_Confirm` uses pointer |
| [X]      | [X]       | `OS_HeapSort` handles cardinals |
| [X]      | [X]       | `OS_HeapSort` handles integers |
| [X]      | [X]       | `OS_HeapSort` handles cardinal pointers |
| [X]      | [X]       | `OS_HeapSort` handles integer pointers |
| [X]      | [X]       | `OS_HeapSort` handles strings insensitively |
| [ ]      | [ ]       | `OS_HeapSort` handles strings insensitively (using locale) |
| [X]      | [X]       | `OS_HeapSort` handles strings sensitively |
| [ ]      | [ ]       | `OS_HeapSort` handles arbitrary comparison functions |
| [ ]      | [ ]       | `OS_HeapSort` constructs object array and sorts|
| [X]      | [X]       | `OS_HeapSort32` constructs object array |
| [ ]      | [ ]       | `OS_HeapSort32` sorts object array |
| [X]      | [X]       | `OS_PrettyPrint` wraps text |
| [X]      | [X]       | `OS_PrettyPrint` handles hard space |
| [X]      | [X]       | `OS_PrettyPrint` uses current window width |
| [X]      | [X]       | `OS_PrettyPrint` handles parameter string |
| [X]      | [X]       | `OS_PrettyPrint` handles user dictionaries |
| [ ]      | [ ]       | `OS_PrettyPrint` uses MOS dictionary |
| [ ]      | [ ]       | `OS_PrettyPrint` can read MOS dictionary |
| [X]      | [X]       | `OS_ReadArgs` handles named switches |
| [X]      | [X]       | `OS_ReadArgs` A flag (always supplied) |
| [X]      | [X]       | `OS_ReadArgs` K flag (keyword must be given) |
| [X]      | [X]       | `OS_ReadArgs` E flag (evaluate expression) |
| [X]      | [X]       | `OS_ReadArgs` S flag (boolean switch) |
| [X]      | [X]       | `OS_ReadArgs` G flag (GSTrans) |
| [X]      | [X]       | `OS_ReadArgs` handles quoted strings |
| [x]      | [X]       | `OS_SubstituteArgs` handles `%<number>` |
| [x]      | [X]       | `OS_SubstituteArgs` handles `%*<number>` |
| [x]      | [X]       | `OS_SubstituteArgs` appended unused arguments |
| [x]      | [X]       | `OS_SubstituteArgs` handles quoted strings |
| [X]      | [X]       | `OS_CRC` calculates correct checksums compared to Classic |
| [ ]      | [ ]       | `OS_CRC` handles positive increments other than 1 |
| [ ]      | [ ]       | `OS_CRC` handles negative increments |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_Confirm` |
| [X]      | [X]       | `OS_CRC` |
| [>]      | [>]       | `OS_HeapSort` |
| [>]      | [>]       | `OS_HeapSort32` |
| [>]      | [>]       | `OS_PrettyPrint` |
| [X]      | [X]       | `OS_ReadArgs` |
| [X]      | [X]       | `OS_SubstituteArgs` |
| [X]      | [X]       | `OS_SubstituteArgs32` |
| [X]      | [X]       | `OS_ReadRAMFSLimits` |


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


* `MessageTrans`
* `Wimp`



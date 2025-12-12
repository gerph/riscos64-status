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
| [ ]      | [ ]       | `OS_HeapSort` handles cardinals |
| [ ]      | [ ]       | `OS_HeapSort` handles integers |
| [ ]      | [ ]       | `OS_HeapSort` handles cardinal pointers |
| [ ]      | [ ]       | `OS_HeapSort` handles integer pointers |
| [ ]      | [ ]       | `OS_HeapSort` handles strings insensitively |
| [ ]      | [ ]       | `OS_HeapSort` handles strings sensitively |
| [ ]      | [ ]       | `OS_HeapSort` handles arbitrary comparison functions |
| [ ]      | [ ]       | `OS_PrettyPrint` wraps text |
| [ ]      | [ ]       | `OS_PrettyPrint` handles hard space |
| [ ]      | [ ]       | `OS_PrettyPrint` uses current window width |
| [ ]      | [ ]       | `OS_PrettyPrint` handles parameter string |
| [ ]      | [ ]       | `OS_PrettyPrint` handles user dictionaries |
| [ ]      | [ ]       | `OS_PrettyPrint` uses MOS dictionary |
| [ ]      | [ ]       | `OS_PrettyPrint` can read MOS dictionary |
| [ ]      | [ ]       | `OS_PrettyPrint` can read MOS dictionary |
| [ ]      | [ ]       | `OS_ReadArgs` handles named switches |
| [ ]      | [ ]       | `OS_ReadArgs` A flag (always supplied) |
| [ ]      | [ ]       | `OS_ReadArgs` K flag (keyword must be given) |
| [ ]      | [ ]       | `OS_ReadArgs` E flag (evaluate expression) |
| [ ]      | [ ]       | `OS_ReadArgs` S flag (boolean switch) |
| [ ]      | [ ]       | `OS_ReadArgs` G flag (GSTrans) |
| [ ]      | [ ]       | `OS_ReadArgs` handles quoted strings |
| [ ]      | [ ]       | `OS_SubstituteArgs` handles `%<number>` |
| [ ]      | [ ]       | `OS_SubstituteArgs` handles `%*<number>` |
| [ ]      | [ ]       | `OS_SubstituteArgs` appended unused arguments |
| [ ]      | [ ]       | `OS_SubstituteArgs` handles quoted strings |

### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_Confirm` |
| [ ]      | [ ]       | `OS_CRC` |
| [ ]      | [ ]       | `OS_HeapSort` |
| [ ]      | [ ]       | `OS_HeapSort32` |
| [ ]      | [ ]       | `OS_PrettyPrint` |
| [ ]      | [ ]       | `OS_ReadArgs` |
| [ ]      | [ ]       | `OS_SubstituteArgs` |
| [ ]      | [ ]       | `OS_SubstituteArgs32` |
| [ ]      | [ ]       | `OS_ReadRAMFSLimits` |


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



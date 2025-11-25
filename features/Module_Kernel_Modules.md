# Module: Kernel (Modules)

## Overview

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component will provide the handling of modules.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Module header parsing |
| [ ]      | [ ]       | Module architecture flag |
| [X]      | [X]       | Reject invalid header |
| [ ]      | [ ]       | Reject invalid architecture |
| [ ]      | [ ]       | Initialisation entry |
| [ ]      | [ ]       | Initialisation with hardware address |
| [ ]      | [ ]       | Start entry |
| [ ]      | [ ]       | Finalisation entry |
| [ ]      | [ ]       | Boot initialisation |
| [ ]      | [ ]       | Early init modules |
| [ ]      | [ ]       | Private word free on finalisation |
| [ ]      | [ ]       | Service entry |
| [ ]      | [ ]       | Service fast entry point |
| [ ]      | [ ]       | Service fast entry point (indexed) |
| [ ]      | [ ]       | Command table recognised (not parsed; see CLIV) |
| [ ]      | [ ]       | SWI entry/table (not called; see Kernel:SWIs) |
| [ ]      | [ ]       | Messages file recognised (not used; see CLIV) |
| [ ]      | [ ]       | Module postfix name |
| [ ]      | [ ]       | Multiple instantiation |
| [ ]      | [ ]       | Preferred instance |
| [ ]      | [ ]       | Private zero-init workspace in extension block |
| [ ]      | [ ]       | Module information |
| [ ]      | [ ]       | Module enumeration |
| [ ]      | [ ]       | Module load |
| [ ]      | [ ]       | Module load replaces existing module |
| [ ]      | [ ]       | Service_ModuleStatus initialised |
| [ ]      | [ ]       | Service_ModuleStatus finalised |
| [ ]      | [ ]       | Service_ModuleStatus preferred instance |
| [X]      | [X]       | Module allocations DA |
| [>]      | [>]       | Module area DA |
| [ ]      | [ ]       | Module allocation for module |
| [ ]      | [ ]       | Module allocation for module zeroinit |
| [ ]      | [ ]       | Podule chunk enumeration |
| [ ]      | [ ]       | ROM modules list |
| [ ]      | [ ]       | Initialisation of only latest ROM resident versions |
| [ ]      | [ ]       | Compressed modules |
| [>]      | [>]       | Heap: describe |
| [>]      | [>]       | Heap: claim |
| [>]      | [>]       | Heap: free |
| [>]      | [>]       | Heap: extend |


Note: There are many other features that should be handled.


### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_Module` (&1e) |
| [ ]      | [ ]       | `OS_Module` 0  (Run) |
| [ ]      | [ ]       | `OS_Module` 1  (Load) |
| [ ]      | [ ]       | `OS_Module` 2  (Enter) |
| [ ]      | [ ]       | `OS_Module` 3  (ReInit) |
| [ ]      | [ ]       | `OS_Module` 4  (Delete) |
| [ ]      | [ ]       | `OS_Module` 5  (RMADesc) |
| [ ]      | [ ]       | `OS_Module` 6  (Claim) |
| [ ]      | [ ]       | `OS_Module` 7  (Free) |
| [ ]      | [ ]       | `OS_Module` 8  (Tidy) |
| [ ]      | [ ]       | `OS_Module` 9  (Clear) |
| [ ]      | [ ]       | `OS_Module` 10 (AddArea) |
| [ ]      | [ ]       | `OS_Module` 11 (CopyArea) |
| [ ]      | [ ]       | `OS_Module` 12 (GetNames) |
| [ ]      | [ ]       | `OS_Module` 13 (ExtendBlock) |
| [ ]      | [ ]       | `OS_Module` 14 (NewIncarnation) |
| [ ]      | [ ]       | `OS_Module` 15 (RenameIncarnation) |
| [ ]      | [ ]       | `OS_Module` 16 (MakePreferred) |
| [ ]      | [ ]       | `OS_Module` 17 (AddPoduleModule) |
| [ ]      | [ ]       | `OS_Module` 18 (LookupName) |
| [ ]      | [ ]       | `OS_Module` 19 (EnumerateROM_Modules) |
| [ ]      | [ ]       | `OS_Module` 20 (EnumerateROM_ModulesWithInfo) |
| [ ]      | [ ]       | `OS_Module` 21 (ROMLoad) |
| [ ]      | [ ]       | `OS_Module` 22 (GetNamesWithPrivateWord) |
| [ ]      | [ ]       | `OS_Module` 23 (UnplugInsertModule) |



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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModuleStatus` |
| [ ]      | [ ]       | `Service_UKCompression` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


*None*



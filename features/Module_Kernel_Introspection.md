# Module: Kernel (Introspection)

## Overview

The Kernel is being worked on in parts, to allow it to have delineated
implementation. This component will provide the interfaces for reading
information about the OS itself and about hardware.

Providing stub implementation functions for the different interfaces
will allow us to get a simple implementation provisioned, and then
expanded as we have more of the system that we can read information from.

The expectation is that there will be both command line versions of the
implementation that can be used for testing, and a fake module which
implements the equivalent of the `OS_*` SWI calls.
This should mean that the subsequent integration to create the Kernel
itself just has to hook the defined SWIs into the existing code. Or
that the code can be hooked into the existing Kernel.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/)

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `OS_Byte 0` version |
| [X]      | [ ]       | `OS_Byte 129, 0, 255` version |
| [>]      | [>]       | `OS_ReadSysInfo 0` (Configured Screen Size) |
| [>]      | [>]       | `OS_ReadSysInfo 1` (Configured Mode) |
| [>]      | [>]       | `OS_ReadSysInfo 2` (Chips And UniqueID) |
| [>]      | [>]       | `OS_ReadSysInfo 3` (IO Features) |
| [>]      | [>]       | `OS_ReadSysInfo 4` (Ethernet Address) |
| [>]      | [>]       | `OS_ReadSysInfo 5` (Raw Unique ID) |
| [>]      | [>]       | `OS_ReadSysInfo 6` (Kernel Value) |
| [>]      | [>]       | `OS_ReadSysInfo 7` (Last Abort) |
| [>]      | [>]       | `OS_ReadSysInfo 8` (Platform Class) |
| [>]      | [>]       | `OS_ReadSysInfo 9` (ROM Information) |
| [>]      | [>]       | `OS_ReadSysInfo 10` (OS Version) |
| [>]      | [>]       | `OS_ReadSysInfo 11` (Debug Information) |
| [ ]      | [ ]       | `OS_ReadSysInfo 12` (Read Extended MachineId) |
| [ ]      | [ ]       | `OS_ReadSysInfo 13` (Validate Key Handler) |
| [ ]      | [ ]       | `OS_ReadSysInfo 14` (IIC) |
| [ ]      | [ ]       | `OS_ReadSysInfo 15` (EnumerateFooterEntries) |
| [ ]      | [ ]       | `OS_Memory 6` (Read Physical Table Size) |
| [ ]      | [ ]       | `OS_Memory 7` (Read Physical Table) |
| [ ]      | [ ]       | `OS_Memory 8` (Amounts) |
| [ ]      | [ ]       | `OS_Memory 9` (IO Space) |
| [ ]      | [ ]       | `OS_PlatformFeatures 0` (code features) |
| [ ]      | [ ]       | `OS_PlatformFeatures 1` (MMU features) |
| [ ]      | [ ]       | `OS_PlatformFeatures 33` (Cache features) |
| [ ]      | [ ]       | `OS_PlatformFeatures 34` (CPU features) |
| [ ]      | [ ]       | `OS_PlatformFeatures 64` (CPU registers) |
| [ ]      | [ ]       | `OS_MemMapInfo` |
| [ ]      | [ ]       | `OS_MemMapEntries` |



### Commands


*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `OS_ReadMemMapInfo` (&51) |
| [ ]      | [ ]       | `OS_ReadMemMapEntries` (&51) |
| [X]      | [X]       | `OS_ReadSysInfo` (&58) |
| [ ]      | [ ]       | `OS_Memory` (&68) |
| [ ]      | [ ]       | `OS_PlatformFeatures` (&6d) |



### Services

*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ByteV` 0 |
| [X]      | [ ]       | `ByteV` 129, 0, 255 |


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



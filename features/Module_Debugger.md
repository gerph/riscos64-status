# Module: Debugger

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/debugger.html)

## Discovered features


* Has application environment
* Has dynamic code
* Has services
* Has services fast
* Has swis
* Uses console input
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | Breakpoints |
| [X]      | [X]       | ARM32 default in ARM32 host, AArch64 default in AArch64 host |
| [X]      | [X]       | Provides comments on immediate constants |
| [ ]      | [ ]       | Indicates target address contents for load instructions |
| [ ]      | [ ]       | Provides warnings in comments for bad usage of instructions |
| [ ]      | [ ]       | `*MemoryI`/`*DumpI` shows function names beside entry points |
| [ ]      | [ ]       | `*MemoryI`/`*DumpI` shows function names at branch points |
| [ ]      | [ ]       | Uses MessageTrans |
| [X]      | [X]       | DisassembleArch supports ARM |
| [X]      | [X]       | DisassembleArch supports Thumb |
| [X]      | [X]       | DisassembleArch supports AArch64 |
| [ ]      | [ ]       | Supports DebuggerPlus flag `FDwithR13` (use FD with R13, eg. STMDB R13 -> STMFD R13) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `APCS` (use APCS-R register set) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `LFMstack` (use stack notation with LFM & SFM where possible) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `LFS` (use LFS and SFS in preference to LFM & SFM) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `QuoteSWIs` (put quotes around SWI names) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `UseDCD` (use DCD instead of 'Undefined instruction') |
| [ ]      | [ ]       | Supports DebuggerPlus flag `UseVDU` (use VDU x instead of SWI OS_WriteI+x) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `ANDEQasDCD` (use DCD instead of 'ANDEQ' and similar) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `UseADRL` (use ADRL (ADRX) instead of ADR + ADD/SUB (+ ADD/SUB)) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `UseADRW` (use ADRW, LDRW, STRW for R12+/-m & [R12,#m]) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `LongMul` (append L to UMUL, SMUL, UMLA, SMLA) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `UseLDRL` (use LDRL instead of ADR/ADD/SUB + LDR) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `UseNOP` (use NOP for MOV R0,R0 and BRK for DCD &x6000010) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `OldPSR` (use old CPSR/SPSR names) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `Wide` (disassemble for wide display) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `HSLO` (use HS and LO instead of CS and CC) |
| [ ]      | [ ]       | Supports DebuggerPlus flag `Shift` (append comments of the form x<<y) |

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*BreakClr` |
| [X]      | [ ]       | `*BreakList` |
| [X]      | [ ]       | `*BreakSet` |
| [X]      | [ ]       | `*Continue` |
| [X]      | [ ]       | `*Debug` |
| [X]      | [X]       | `*InitStore` |
| [X]      | [X]       | `*Memory` |
| [X]      | [X]       | `*MemoryA` |
| [X]      | [X]       | `*MemoryI` |
| [X]      | [X]       | `*DumpI` |
| [X]      | [X]       | `*ShowRegs` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `Debugger_Disassemble` (&40380) |
| [X]      | [X]       | `Debugger_DisassembleThumb` (&40381) |
| [ ]      | [ ]       | `Debugger_Flags` (&40382) |
| [ ]      | [ ]       | `Debugger_CPU` (&40383) |
| [ ]      | [ ]       | `Debugger_DisassemblePlus` (&40384) |
| [X]      | [X]       | `Debugger_DisassembleArch` (&40385) |


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Reset` |


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


* `Debugger`
* `MessageTrans`



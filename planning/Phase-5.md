# Phase 5: Hardware wiring / Printer / advancing functionality

## Summary

Phase 5 brings in the hardware drivers for different parts of the
system, to ensure that we have the capability to run on real systems.
It's possible that these drivers might actually get developed
in advance of this phase, but full functionality might not get tied
down until this point.

Together with the hardware implementations, the graphics system can
be finished off, bringing in components which are in C but had not
yet been made to work, or creating simple implementations of assembler
modules.

The printing sysetm is a large part of this phase, though a lot of
the work should be investigation to decide how to progress. It would
help greatly if the share implementations used by the dumper modules
were made more common, and the drivers refactored to make it easiser
to add new systems. It's likely that this can be improved through a
pipeline process, with bitmap and vector drivers separating and dumpers
being given a separate system. However, this is open to more design
work.

Finalising the high level network stack components can be done here,
as well as bringing in the compatibility layers for some of the old
BBC interfaces. It is likely that new modules will be required to
handle the legacy interfaces that are being replaced due to the
RISC OS 64 design and implementations.

## Target functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:IRQs               | Kernel         | Functional |
| Kernel:Timers             | Kernel         | Functional |
| IRQ                       | HW             | Functional |
| Podule                    | HW             | Investigate |
| DMAManager                | HW             | Functional |
| IIC                       | HW             | Functional |
| RTCHW                     | HW             | Functional |
| NVRAMHW                   | HW             | Functional |
| Portable                  | HW             | Functional |
| SerialDeviceDriver        | HW             | Functional |
| ParallelDeviceDriver      | HW             | Functional |
| Mouse                     | HW             | Investigate |
| SerialMouse               | HW             | Investigate |
| PS2Driver                 | HW             | Investigate |
| SoundDMA                  | HW             | Functional |
| CDFSSoftATAPI             | HW             | Investigate |
| CDFSSoftChinonEESOX       | HW             | Investigate |
| CDFSSoftHitachiEESOX      | HW             | Investigate |
| CDFSSoftPhilipsEESOX      | HW             | Investigate |
| CDFSSoftSonyEESOX         | HW             | Investigate |
| CDFSSoftToshibaEESOX      | HW             | Investigate |
| CDFSSoftSCSI              | HW             | Investigate |
| ARM                       | Core           | Functional |
| Joystick                  | I/O            | Functional |
| SerialDeviceSupport       | FS             | Functional |
| ColourMap                 | Graphics       | Functional |
| FontMap                   | Graphics       | Functional |
| BlendTable                | Graphics       | Functional |
| InverseTable              | Graphics       | Functional |
| VideoGuard                | Graphics       | Functional |
| OSPointer                 | Graphics       | Functional |
| SpriteExtend:Transforms   | Graphics       | Functional |
| Free                      | Desktop        | Functional |
| DisplayManager            | Desktop        | Functional |
| ColourPicker              | Desktop        | Functional |
| Filer                     | Desktop        | Functional |
| FilerSWIs                 | Desktop        | Functional |
| Filer_Action              | Desktop        | Functional |
| WindowScroll              | Desktop        | Functional |
| ClipboardHolder           | Desktop        | Functional |
| Wimp:IconBorders          | Desktop        | Functional |
| PDriver                   | Printing       | Functional |
| PDriverDP                 | Printing       | Investigate |
| PDumper24                 | Printing       | Investigate |
| PDumperCX                 | Printing       | Investigate |
| PDumperDM                 | Printing       | Investigate |
| PDumperE2                 | Printing       | Investigate |
| PDumperIW                 | Printing       | Investigate |
| PDumperLJ                 | Printing       | Investigate |
| PDriverPS                 | Printing       | Investigate |
| PDumperSupport            | Printing       | Investigate |
| MakePSFont                | Printing       | Functional |
| NetPrint                  | Printing       | Functional |
| InetConfigure             | Network        | Functional |
| DHCPClient                | Network        | Functional |
| ZeroConf                  | Network        | Functional |
| RouterDiscovery           | Network        | Functional |
| LegacyBBC                 | Compatibility  | Functional |
| LegacyScreen              | Compatibility  | Functional |
| BBCEconet                 | Compatibility  | Functional |
| RTCAdjust                 | Time           | Investigate |
| InternetTime              | Time           | Functional |

<!-- Charts go here -->

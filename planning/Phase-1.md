# Phase 1: Simple modules and stubs

[![Progress of phase 1](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/ffa42a7f746d38a46a71daf5bb16ce001b790427/Progress-1.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-1)

## Summary

Phase 1 should show users and developers that the 64-bit conversion
work has started to happen. Whilst not entirely a PR exercise, it is
intended to show how the development towards 64-bit, taking in the
conversion to high level languages as a stop along the way, is both
possible and something that they may get involved in.

This should encourage developers to become involved, where they can, and
reassure users that this progression is actually happening.

As such, many of the core functions of the system can be started on,
and brought to the point of functionality. A selection of components
from within the system can be used to demonstrate techniques for
creating the higher level implementations.

## Target functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| UtilityModule             | Kernel         | Functional |
| SystemVars                | Kernel         | Internals |
| FileTypes                 | Kernel         | Functional |
| OSCommands                | Kernel         | Functional |
| FSCommands                | Kernel         | Functional |
| ModuleCommands            | Kernel         | Functional |
| Conversions               | Kernel         | Stub |
| EvaluateExpression        | Kernel         | Stub |
| CLIV                      | Core           | Functional |
| ARM                       | Core           | Stub |
| Debugger                  | Core           | Functional |
| LibraryHelp               | Core           | Functional |
| PathUtils                 | Core           | Functional |
| BootCommands              | Core           | Internals |
| TimerManager              | HW             | Internals |
| IIC                       | HW             | Stub |
| NVRAMHW                   | HW             | Prototype |
| Portable                  | HW             | Prototype |
| ReadLine                  | I/O            | Functional |
| BufferManager             | I/O            | Functional |
| SystemBell                | I/O            | Functional |
| PrinterBuffer             | I/O            | Functional |
| VideoTTX                  | Graphics       | Functional |
| VideoSW                   | Graphics       | Stub |
| VideoGuard                | Graphics       | Stub |
| OSPointer                 | Graphics       | Stub |
| Hourglass                 | Graphics       | Functional |
| ScreenBlanker             | Graphics       | Stub |
| SpriteUtils               | Graphics       | Stub |
| ResourceFS                | FS             | Internals |
| MessageTrans              | I18N           | Functional |
| RemotePrinterSupport      | Printing       | Stub |
| Wimp:Templates            | Desktop        | Internals |
| ErrorLog                  | Reporting      | Functional |
| RTC                       | Time           | Stub |

<!-- Charts go here -->

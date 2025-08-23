# Planned development of RISC OS 64 components

## Summary

This document describes some of the phases of development that might take place
to develop components for a 64-bit version of RISC OS. Primarily this focuses on
the modules necessary to build the 'ROM' - however it is not anticipated that
the distribution mechanism would be specifically a ROM image, as this makes less
sense within a modern environment.

The phases are intended to be general sections of deliverable milestones which
show continued development and which are realistic in developing the system
towards an environment that can be worked on by more people. Components within
the stacks may depend on other components, but it may not be necessary to develop
the earlier components if an existing RISC OS Classic implementation can be used
for testing, or RISC OS Pyromaniac already provides the necessary functionality
to work against.

Although the early stages will be small in scope, the amount of work necessary
the further through the process we move, the more unreliable the planning will be.
Many components may need to be split up to ensure that they can be worked on
in stages - the Kernel and the WindowManager are examples of this.

Some lesser important modules are placed further down the phases, as they are not
necessary to develop anything important.

## Scope

The scope of the phased development is purely restricted to the target of the
RISC OS 64 environment, using a 32-bit address space. This is intended to ensure
that there is a solid deliverable with minimal changes necessary for application
authors to build for that environment.

Additionally, this phased work does not include any work on infrastructure,
test environments, or tooling. Whilst much of this is already present, it is
quite possible that in the future we will need more, and this can be worked
into the plans at that time.

## Future work

It is likely that once parts of these phases have been firmed up, the
implementation of the applications can also be updated. Applications will
largely only require small changes to the types of objects.

There will be more work necessary to provide an environment for booting and
the style guide for application distribution. Within the standard boot
sequence, it is desireable to provide both 32bit and 64bit components so
that the same sequence can be used for both architectures (and, of course, any
other architectures in the future). This will need some additional design,
implementation and documentation.


## Functionality key, in mostly increasing functionality:

* `Investigate` - decide how to proceed
* `Stub` - just the interface to the OS; no implementation.
* `Prototype` - largely functional, but hardware implementation missing.
* `Built` - component has been built into a binary, but it's not understood whether it is working, or even useful.
* `Internals` - internal implementation, but no OS wiring.
* `Functional` - wired from OS interface to internals, but may be missing less used features, including I18N.
* `Complete` - implemented completely.
* `Tested` - implemented and tested manually.
* `Automated` - testing has been automated.

Although the functionality key covers `Complete`, `Tested`, and `Automated`, these stages are not part of the current phasing. These states are expected to be developed on an as-needed basis, as `Complete` would require a definition of what was the complete functionality required, which it will be difficult to do initially.

## Stacks and dependencies

There are multiple stacks within RISC OS, being a highly modular system, which
allows the functionality of the system to be tailored for different purposes.
Whilst not all of the components are necessary for a functioning system, they
build up to make a system that users are familiar with.

The stack areas are somewhat arbitrary for some components, as they may straddle
multiple stacks. However, for simplicity, I have selected a single stack to
assign each component to. This allows progress within the stacks to be tracked
independant of the phases, and to allow better reasoning about system
functionality and completeness.

The stacks defined are:

* `Audio` - The sound system.
* `Compatibility` - Support for legacy systems and future-proofing for later changes.
* `Core` - Components upon which the system is based.
* `Desktop` - User interfaces components for the windowing system.
* `FS` - File system interfaces and drivers.
* `Graphics` - Graphical I/O system.
* `HW` - Hardware drivers and interfacing.
* `I/O` - Keyboard, mouse, joystick, touchpad, VDU, serial, parallel, GPIO.
* `I18N` - Internationalisation features, such as translation of text to other languages.
* `Kernel` - Components which are, or were, core kernel functions in older systems.
* `L12N` - Localisation features such as formatting of text.
* `Network` - Econet and IP interfaces.
* `Printing` - Printer output and support.
* `Reporting` - Diagnostics and reporting functions.
* `Time` - Date and time management.

## Component separation

Some components are large and complex. These components have been split up, where
possible, to make it easier to develop sections of them in parallel. It is possible
that the separation may result in individual modules being created, rather than the
parts being amalgamated into a single component. In particular, the Kernel and the
WindowManager are separated into their component parts and can be worked on
separately.



## Work breakdown

The breakdown of the work can be viewed in two ways:

* Broken down by the Phases
    * [Phase 1: Simple modules and stubs](Phase-1)
    * [Phase 2: Stub implemented / advancing functionality](Phase-2)
    * [Phase 3: Stack wiring / advancing functionality](Phase-3)
    * [Phase 4: Desktop / Networking / advancing functionality](Phase-4)
    * [Phase 5: Hardware wiring / Printer / advancing functionality](Phase-5)
    * [Phase 6: Applications / advancing functionality](Phase-6)
    * [Phase 7: Compatibility and future proofing](Phase-7)
* [Broken down by the Stacks](Stacks)


## Late stage development / not needed

Not a phase, but there are certain components which are present in the
usual OS, which may not be needed or which need much greater organisation
within the RISC OS 64 system.

| Name                      | Comments |
|---------------------------|---------------|
| FPEmulator                | FP emulation not required |
| SharedCLibrary            | Shared C library not required |
| UnSqueezeAIF              | Compressed modules not required |
| ADFS                      | Replace with block device drivers |
| ResourceFiler             | Replace with OmniFiler |
| ADFSFiler                 | Replace with OmniFiler |
| RAMFSFiler                | Replace with OmniFiler |
| CDFSFiler                 | Replace with OmniFiler |
| NetFiler                  | Replace with OmniFiler |
| BASIC64                   | Replaced by configurable BASIC module |
| BASICTrans                | Not required |
| SuperSample               | May not be required if FontManager does that job |
| TaskWindow                | Complex; application model changes would help |


### Definitely not required

These are a number of modules that are not required for the RISC OS 64
system.

| Name                      | Reason |
|---------------------------|---------------|
| CFrontDemangler           | CFront not supplied |
| VideoHWVIDC               | VIDC not required for modern devices |
| VideoHWVF                 | VF not required for modern devices |
| WindowUtils               | Patches no longer necessary |
| CallASWI                  | Built in to modern systems |
| IRQUtils                  | Patches no longer necessary (although the invaders game might be interesting) |
| ImageFileRender_Artworks  | Not required without AWRender |
| !Alarm module             | Not required; move to application |


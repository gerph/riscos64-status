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


## Functionality

The terms used in describing the functionality can be found in the [Terminology document](Terminology#functionality).

## Stacks

RISC OS comprises a number of different 'stacks' of related technologies, built upon one another. The stack names and their meaning can be found in the [Terminology document](Terminology#stacks).


## Component separation

Some components are large and complex. These components have been split up, where
possible, to make it easier to develop sections of them in parallel. It is possible
that the separation may result in individual modules being created, rather than the
parts being amalgamated into a single component. In particular, the Kernel and the
WindowManager are separated into their component parts and can be worked on
separately.

The component names are represented thus: `Component:Function`

For example, the component `Kernel:Modules` would be the sub-section of the Kernel which handles most of the functionality related to Module handling. As the sub-sections will inevitably need to interact with other sections, the boundary may be blurry, but the core features should be clear from the name.



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


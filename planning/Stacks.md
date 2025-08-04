# Stack development for RISC OS 64 components

## Summary

This document is based on the planned phases of development for each
stack within RISC OS. As described in the [Planning](Planning.md)
document, the stacks are somewhat arbitrary, but enable a view which
looks at individual parts of the system which are largely isolated from,
other stacks.

This document is automatically generated from the documentation in the
Phases document.

<!-- Charts go here -->

## Stack: Audio

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Audio
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section Percussion
    Investigate  : investigate, 1902, 1y

    section SharedSound
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section SoundChannels
    Internals    : internals, 1902, 1y
    Functional   : functional, 1903, 1y

    section SoundDMA
    Stub         : stub, 1902, 1y
    Internals    : internals, 1903, 1y
    Functional   : functional, 1905, 1y

    section SoundScheduler
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

    section StringLib
    Investigate  : investigate, 1902, 1y

    section WaveSynth
    Investigate  : investigate, 1902, 1y

```


## Stack: Compatibility

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Compatibility
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section AppPatcher
    Functional   : functional, 1907, 1y

    section BBCEconet
    Functional   : functional, 1905, 1y

    section LegacyBBC
    Functional   : functional, 1905, 1y

    section LegacyScreen
    Functional   : functional, 1905, 1y

```


## Stack: Core

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Core
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section ARM
    Stub         : stub, 1901, 1y
    Functional   : functional, 1905, 1y

    section BASIC
    Functional   : functional, 1902, 1y

    section BootCommands
    Internals    : internals, 1901, 1y
    Functional   : functional, 1903, 1y

    section CLIV
    Functional   : functional, 1901, 1y

    section DDEUtils
    Functional   : functional, 1902, 1y

    section Debugger
    Functional   : functional, 1901, 1y

    section LibraryHelp
    Functional   : functional, 1901, 1y

    section Obey
    Functional   : functional, 1902, 1y

    section OwnerBanner
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section PathUtils
    Functional   : functional, 1901, 1y

    section Squash
    Functional   : functional, 1903, 1y

    section ZLib
    Functional   : functional, 1906, 1y

    section Zipper
    Functional   : functional, 1906, 1y

```


## Stack: Desktop

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Desktop
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section ClipboardHolder
    Functional   : functional, 1905, 1y

    section ColourPicker
    Functional   : functional, 1905, 1y

    section Desktop
    Internals    : internals, 1902, 1y
    Functional   : functional, 1904, 1y

    section DisplayManager
    Internals    : internals, 1902, 1y
    Functional   : functional, 1905, 1y

    section DragASprite
    Internals    : internals, 1902, 1y
    Functional   : functional, 1906, 1y

    section DragAnObject
    Stub         : stub, 1904, 1y
    Functional   : functional, 1906, 1y

    section Filer
    Internals    : internals, 1903, 1y
    Functional   : functional, 1905, 1y

    section FilerSWIs
    Functional   : functional, 1903, 1y
    Functional   : functional, 1905, 1y

    section Filer_Action
    Functional   : functional, 1905, 1y

    section FilterManager
    Functional   : functional, 1904, 1y

    section Free
    Stub         : stub, 1902, 1y
    Internals    : internals, 1903, 1y
    Functional   : functional, 1905, 1y

    section IconBorderPlain
    Functional   : functional, 1906, 1y

    section IconBorderRound
    Functional   : functional, 1906, 1y

    section OmniDisc
    Functional   : functional, 1904, 1y

    section Pinboard
    Investigate  : investigate, 1904, 1y

    section RedrawManager
    Functional   : functional, 1906, 1y

    section ScrSaver
    Functional   : functional, 1906, 1y

    section ShellCLI
    Functional   : functional, 1904, 1y

    section TaskManager
    Internals    : internals, 1902, 1y
    Functional   : functional, 1904, 1y

    section Wimp:CommandWindow
    Functional   : functional, 1904, 1y

    section Wimp:ErrorBox
    Functional   : functional, 1904, 1y

    section Wimp:Fonts
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Wimp:IconBorders
    Functional   : functional, 1905, 1y

    section Wimp:IconRender
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Wimp:Interaction
    Functional   : functional, 1904, 1y

    section Wimp:Introspection
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section Wimp:Memory
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Wimp:Menus
    Functional   : functional, 1904, 1y

    section Wimp:Messages
    Functional   : functional, 1904, 1y

    section Wimp:Pointer
    Functional   : functional, 1904, 1y

    section Wimp:Polling
    Functional   : functional, 1904, 1y

    section Wimp:SWIs
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section Wimp:SpritePools
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Wimp:SpriteRender
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Wimp:Startup
    Functional   : functional, 1904, 1y

    section Wimp:TaskManagement
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Wimp:Templates
    Internals    : internals, 1901, 1y
    Functional   : functional, 1904, 1y

    section Wimp:TextRender
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

    section Wimp:Tiling
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Wimp:WindowManagement
    Functional   : functional, 1904, 1y

    section Wimp:WindowRender
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Wimp:WindowStacking
    Functional   : functional, 1904, 1y

    section WindowScroll
    Functional   : functional, 1905, 1y

```


## Stack: FS

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: FS
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section AIF
    Functional   : functional, 1903, 1y

    section BlockDevices
    Functional   : functional, 1902, 1y

    section CDFS
    Internals    : internals, 1902, 1y
    Functional   : functional, 1903, 1y

    section CDFSResources
    Stub         : stub, 1902, 1y

    section CDFSdriver
    Stub         : stub, 1903, 1y

    section DOSFS
    Functional   : functional, 1903, 1y

    section DeviceFS
    Internals    : internals, 1903, 1y

    section FSLock
    Functional   : functional, 1903, 1y

    section FileCore
    Investigate  : investigate, 1903, 1y

    section FileSwitch
    Stub         : stub, 1902, 1y

    section LanManFS
    Functional   : functional, 1904, 1y

    section MimeMap
    Functional   : functional, 1902, 1y

    section NetFS
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section PipeFS
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section RamFS
    Functional   : functional, 1903, 1y

    section ResourceFS
    Internals    : internals, 1901, 1y
    Functional   : functional, 1903, 1y

    section SerialDeviceSupport
    Functional   : functional, 1905, 1y

    section ShareFS
    Functional   : functional, 1904, 1y

    section SystemDevices
    Internals    : internals, 1902, 1y
    Functional   : functional, 1903, 1y

    section TransientUtility
    Functional   : functional, 1903, 1y

```


## Stack: Graphics

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Graphics
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section BlendTable
    Functional   : functional, 1905, 1y

    section ColourMap
    Functional   : functional, 1905, 1y

    section ColourTrans
    Stub         : stub, 1902, 1y
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section CompressJPEG
    Functional   : functional, 1906, 1y

    section ConvertBMP
    Functional   : functional, 1906, 1y

    section ConvertClear
    Functional   : functional, 1906, 1y

    section ConvertGIF
    Functional   : functional, 1906, 1y

    section ConvertICO
    Functional   : functional, 1906, 1y

    section ConvertPCX
    Functional   : functional, 1906, 1y

    section ConvertPNG
    Functional   : functional, 1906, 1y

    section ConvertPNM
    Functional   : functional, 1906, 1y

    section ConvertSprite
    Functional   : functional, 1906, 1y

    section ConvertSun
    Functional   : functional, 1906, 1y

    section ConvertXBM
    Functional   : functional, 1906, 1y

    section Draw
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

    section DrawFile
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

    section FontManager
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

    section FontMap
    Functional   : functional, 1905, 1y

    section GameModes
    Functional   : functional, 1902, 1y

    section Hourglass
    Functional   : functional, 1901, 1y

    section ImageFileConvert
    Functional   : functional, 1906, 1y

    section ImageFileRender
    Functional   : functional, 1906, 1y

    section InverseTable
    Functional   : functional, 1905, 1y

    section Kernel:Mode
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section Kernel:Sprites
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section OSPointer
    Stub         : stub, 1901, 1y
    Functional   : functional, 1905, 1y

    section PNG
    Functional   : functional, 1906, 1y

    section ROMFonts
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section ScreenBlanker
    Stub         : stub, 1901, 1y
    Functional   : functional, 1903, 1y

    section ScreenModes
    Investigate  : investigate, 1902, 1y

    section SpriteExtend:JPEG
    Stub         : stub, 1902, 1y
    Functional   : functional, 1906, 1y

    section SpriteExtend:Scaling
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

    section SpriteExtend:Transforms
    Stub         : stub, 1902, 1y
    Functional   : functional, 1905, 1y

    section SpriteUtils
    Stub         : stub, 1901, 1y
    Functional   : functional, 1904, 1y

    section VideoGuard
    Stub         : stub, 1901, 1y
    Functional   : functional, 1905, 1y

    section VideoSW
    Stub         : stub, 1901, 1y
    Functional   : functional, 1902, 1y

    section VideoTTX
    Functional   : functional, 1901, 1y

```


## Stack: HW

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: HW
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section CDFSSoftATAPI
    Investigate  : investigate, 1905, 1y

    section CDFSSoftChinonEESOX
    Investigate  : investigate, 1905, 1y

    section CDFSSoftHitachiEESOX
    Investigate  : investigate, 1905, 1y

    section CDFSSoftPhilipsEESOX
    Investigate  : investigate, 1905, 1y

    section CDFSSoftSCSI
    Investigate  : investigate, 1905, 1y

    section CDFSSoftSonyEESOX
    Investigate  : investigate, 1905, 1y

    section CDFSSoftToshibaEESOX
    Investigate  : investigate, 1905, 1y

    section DMAManager
    Functional   : functional, 1905, 1y

    section IIC
    Stub         : stub, 1901, 1y
    Functional   : functional, 1905, 1y

    section IRQ
    Functional   : functional, 1905, 1y

    section Mouse
    Investigate  : investigate, 1905, 1y

    section NVRAMHW
    Prototype    : prototype, 1901, 1y
    Functional   : functional, 1905, 1y

    section PS2Driver
    Investigate  : investigate, 1905, 1y

    section ParallelDeviceDriver
    Functional   : functional, 1905, 1y

    section Podule
    Investigate  : investigate, 1905, 1y

    section Portable
    Prototype    : prototype, 1901, 1y
    Functional   : functional, 1905, 1y

    section RTCHW
    Functional   : functional, 1905, 1y

    section SerialDeviceDriver
    Functional   : functional, 1905, 1y

    section SerialMouse
    Investigate  : investigate, 1905, 1y

    section SoundDMA
    Stub         : stub, 1902, 1y
    Internals    : internals, 1903, 1y
    Functional   : functional, 1905, 1y

    section TimerManager
    Internals    : internals, 1901, 1y
    Functional   : functional, 1903, 1y

```


## Stack: I18N

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: I18N
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section MessageTrans
    Functional   : functional, 1901, 1y

    section Messages
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

```


## Stack: IO

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: IO
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section BufferManager
    Functional   : functional, 1901, 1y

    section InternationalKeyboard
    Stub         : stub, 1903, 1y
    Functional   : functional, 1904, 1y

    section Joystick
    Prototype    : prototype, 1902, 1y
    Functional   : functional, 1905, 1y

    section KeyInput
    Functional   : functional, 1903, 1y

    section PrinterBuffer
    Functional   : functional, 1901, 1y

    section ReadLine
    Functional   : functional, 1901, 1y

    section SystemBell
    Functional   : functional, 1901, 1y

```


## Stack: Kernel

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Kernel
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section Conversions
    Stub         : stub, 1901, 1y
    Functional   : functional, 1902, 1y

    section EvaluateExpression
    Stub         : stub, 1901, 1y
    Functional   : functional, 1902, 1y

    section FSCommands
    Functional   : functional, 1901, 1y

    section FileTypes
    Functional   : functional, 1901, 1y

    section Kernel:DAs
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section Kernel:Exceptions
    Functional   : functional, 1904, 1y

    section Kernel:Graphics
    Functional   : functional, 1904, 1y

    section Kernel:Heap
    Functional   : functional, 1903, 1y

    section Kernel:IRQs
    Functional   : functional, 1905, 1y

    section Kernel:Input
    Functional   : functional, 1904, 1y

    section Kernel:Introspection
    Stub         : stub, 1902, 1y

    section Kernel:MemManagement
    Functional   : functional, 1904, 1y

    section Kernel:Modules
    Internals    : internals, 1902, 1y
    Functional   : functional, 1903, 1y

    section Kernel:OSByte
    Functional   : functional, 1903, 1y

    section Kernel:OSWord
    Functional   : functional, 1903, 1y

    section Kernel:ProgEnv
    Functional   : functional, 1904, 1y

    section Kernel:SWIs
    Internals    : internals, 1902, 1y

    section Kernel:Sprites
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section Kernel:SystemInit
    Functional   : functional, 1904, 1y

    section Kernel:Time
    Functional   : functional, 1904, 1y

    section Kernel:Timers
    Functional   : functional, 1905, 1y

    section Kernel:VDU
    Stub         : stub, 1903, 1y
    Functional   : functional, 1904, 1y

    section Kernel:Vectors
    Internals    : internals, 1902, 1y
    Functional   : functional, 1903, 1y

    section ModuleCommands
    Functional   : functional, 1901, 1y

    section OSCommands
    Functional   : functional, 1901, 1y

    section OSSWIs
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

    section SystemVars
    Internals    : internals, 1901, 1y
    Functional   : functional, 1902, 1y

    section UtilityModule
    Functional   : functional, 1901, 1y

```


## Stack: L12N

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: L12N
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section International
    Stub         : stub, 1902, 1y
    Internals    : internals, 1903, 1y
    Functional   : functional, 1904, 1y

    section TerritoryManager
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section UK
    Prototype    : prototype, 1902, 1y
    Functional   : functional, 1904, 1y

```


## Stack: Network

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Network
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section AUNMsgs
    Stub         : stub, 1902, 1y
    Functional   : functional, 1903, 1y

    section BootNet
    Investigate  : investigate, 1902, 1y

    section DHCPClient
    Functional   : functional, 1905, 1y

    section Econet
    Stub         : stub, 1902, 1y
    Prototype    : prototype, 1904, 1y

    section Freeway
    Functional   : functional, 1902, 1y

    section FreewayHosts
    Functional   : functional, 1902, 1y

    section InetConfigure
    Functional   : functional, 1905, 1y

    section InetServices
    Functional   : functional, 1904, 1y

    section Internet
    Functional   : functional, 1904, 1y

    section MbufManager
    Investigate  : investigate, 1904, 1y

    section NetI
    Investigate  : investigate, 1902, 1y

    section NetStatus
    Functional   : functional, 1902, 1y

    section RemotePrinterMessages
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section RemotePrinterSupport
    Stub         : stub, 1901, 1y
    Functional   : functional, 1904, 1y

    section Resolver
    Functional   : functional, 1904, 1y

    section RouterDiscovery
    Functional   : functional, 1905, 1y

    section ZeroConf
    Functional   : functional, 1905, 1y

```


## Stack: Printing

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Printing
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section MakePSFont
    Functional   : functional, 1905, 1y

    section NetPrint
    Functional   : functional, 1905, 1y

    section PDriver
    Functional   : functional, 1905, 1y

    section PDriverDP
    Investigate  : investigate, 1905, 1y

    section PDriverPS
    Investigate  : investigate, 1905, 1y

    section PDumper24
    Investigate  : investigate, 1905, 1y

    section PDumperCX
    Investigate  : investigate, 1905, 1y

    section PDumperDM
    Investigate  : investigate, 1905, 1y

    section PDumperE2
    Investigate  : investigate, 1905, 1y

    section PDumperIW
    Investigate  : investigate, 1905, 1y

    section PDumperLJ
    Investigate  : investigate, 1905, 1y

    section PDumperSupport
    Investigate  : investigate, 1905, 1y

    section RemotePrinterMessages
    Stub         : stub, 1902, 1y
    Functional   : functional, 1904, 1y

    section RemotePrinterSupport
    Stub         : stub, 1901, 1y
    Functional   : functional, 1904, 1y

```


## Stack: Reporting

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Reporting
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section ErrorLog
    Functional   : functional, 1901, 1y

    section SysLog
    Complete     : complete, 1904, 1y

```


## Stack: Time

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Time
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section InternetTime
    Functional   : functional, 1905, 1y

    section RTC
    Stub         : stub, 1901, 1y
    Functional   : functional, 1903, 1y

    section RTCAdjust
    Investigate  : investigate, 1905, 1y

```


## Stack: Toolbox

```mermaid
---
    # Frontmatter config, YAML comments
    displayMode: compact
    config:
        theme: forest
        themeCSS: |
            #investigate { fill: #E03524 }
            #stub { fill: #F07C12 }
            #prototype { fill: #FFC200 }
            #built { fill: #90BC1A }
            #internals { fill: #1F64AD }
            #functional { fill: #0095AC }
            #complete { fill: #21B534 }
            #tested { fill: #4040A0 }
            #automated { fill: #903498 }
            .grid text { text-anchor: start !important;}
            g text.sectionTitle:first-child { font-style: italic; }
            #heading { rx: 0px; stroke: #487e3a; stroke-width: 1px; }

        gantt:
            useWidth: 800
            rightPadding: 0
            leftPadding: 150
            topAxis: true  #false
            numberSectionStyles: 2
---
gantt
    title Stack: Toolbox
    dateFormat YYYY
    axisFormat  
    tickInterval 12month


    section Components
    Phase 1  : heading, 1901, 1y
    Phase 2  : heading, 1902, 1y
    Phase 3  : heading, 1903, 1y
    Phase 4  : heading, 1904, 1y
    Phase 5  : heading, 1905, 1y
    Phase 6  : heading, 1906, 1y
    Phase 7  : heading, 1907, 1y

    section ColourDbox
    Functional   : functional, 1906, 1y

    section ColourMenu
    Functional   : functional, 1906, 1y

    section DCS
    Functional   : functional, 1906, 1y

    section FileInfo
    Functional   : functional, 1906, 1y

    section FontDbox
    Functional   : functional, 1906, 1y

    section FontMenu
    Functional   : functional, 1906, 1y

    section GDivider
    Functional   : functional, 1906, 1y

    section Iconbar
    Functional   : functional, 1906, 1y

    section ImageFileGadget
    Functional   : functional, 1906, 1y

    section Menu
    Functional   : functional, 1906, 1y

    section PrintDbox
    Functional   : functional, 1906, 1y

    section ProgInfo
    Functional   : functional, 1906, 1y

    section SaveAs
    Functional   : functional, 1906, 1y

    section Scale
    Functional   : functional, 1906, 1y

    section TextGadgets
    Functional   : functional, 1906, 1y

    section ToolAction
    Functional   : functional, 1906, 1y

    section Toolbox
    Functional   : functional, 1906, 1y

    section Window
    Functional   : functional, 1906, 1y

```


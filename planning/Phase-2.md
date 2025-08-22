# Phase 2: Stub implemented / advancing functionality

## Summary

Phase 2 will continue the process of firming up modules with stub
implementations which can be progressed later, and advancing the existing components. The goal is to ensure that the existing components get
developed, and others are started on to make them more functional.

Kernel functions can be developed which allow registration of modules
and vectors, and the SWI decoding and handling can be handled. Parts
of the Sprite system can be stubbed for the Kernel and SpriteExtend,
preparing for their extension later.

The audio system can similarly be stubbed, but it will be useful to
investigate whether the current registration system for channel voices
should be perpetuated into the 64bit world.

Desktop components can be implemented to the point of their internals
being functional - for example allowing the tracking of tasks and the
manipulation of display modes in DisplayManager.

The C network components like Freeway can be made functional, and
components like NetI and BootNet will need to be investigated as to
whether they need to be perpetuated.

## Target functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:Introspection      | Kernel         | Stub |
| Kernel:Vectors            | Kernel         | Internals |
| Kernel:Modules            | Kernel         | Internals |
| Kernel:SWIs               | Kernel         | Internals |
| Conversions               | Kernel         | Functional |
| EvaluateExpression        | Kernel         | Functional |
| OSSWIs                    | Kernel         | Stub |
| SystemVars                | Kernel         | Functional |
| BASIC                     | Core           | Functional |
| Obey                      | Core           | Functional |
| DDEUtils                  | Core           | Functional |
| OwnerBanner               | Core           | Stub |
| FileSwitch                | FS             | Stub | (split out components?)
| CDFSResources             | FS             | Stub |
| CDFS                      | FS             | Internals |
| MimeMap                   | FS             | Functional |
| BlockDevices              | FS             | Functional |
| SystemDevices             | FS             | Internals |
| Joystick                  | I/O            | Prototype |
| Messages                  | I18N           | Stub |
| RemotePrinterMessages     | Printing       | Stub |
| AUNMsgs                   | Network        | Stub |
| TerritoryManager          | L12N           | Stub |
| UK                        | L12N           | Prototype |
| International             | L12N           | Stub |
| ROMFonts                  | Graphics       | Stub |
| GameModes                 | Graphics       | Functional |
| ScreenModes               | Graphics       | Investigate |
| ColourTrans               | Graphics       | Stub |
| Draw                      | Graphics       | Stub |
| DrawFile                  | Graphics       | Stub |
| VideoSW                   | Graphics       | Functional |
| Kernel:Mode               | Graphics       | Stub |
| Kernel:Sprites            | Graphics       | Stub |
| SpriteExtend:Scaling      | Graphics       | Stub |
| SpriteExtend:Transforms   | Graphics       | Stub |
| SpriteExtend:JPEG         | Graphics       | Stub |
| FontManager               | Graphics       | Stub |
| SoundDMA                  | Audio          | Stub |
| SoundChannels             | Audio          | Internals |
| WaveSynth                 | Audio          | Investigate |
| StringLib                 | Audio          | Investigate |
| Percussion                | Audio          | Investigate |
| SoundScheduler            | Audio          | Stub |
| SharedSound               | Audio          | Stub |
| Wimp:SWIs                 | Desktop        | Stub |
| Wimp:TextRender           | Desktop        | Stub |
| Wimp:Introspection        | Desktop        | Stub |
| TaskManager               | Desktop        | Internals |
| DisplayManager            | Desktop        | Internals |
| DragASprite               | Desktop        | Internals |
| Free                      | Desktop        | Stub |
| Desktop                   | Desktop        | Internals |
| Econet                    | Network        | Stub |
| NetI                      | Network        | Investigate |
| NetStatus                 | Network        | Functional |
| Freeway                   | Network        | Functional |
| FreewayHosts              | Network        | Functional |
| BootNet                   | Network        | Investigate |

<!-- Charts go here -->

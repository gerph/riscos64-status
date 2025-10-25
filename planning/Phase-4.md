# Phase 4: Desktop / Networking / advancing functionality

[![Progress of phase 4](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/Progress-4.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-4)

## Summary

Phase 4 is a large phase, bringing together a log of components.
By the time we reach phase 4, a lot of the fundamentals should
already be present, and hopefully there will be more people
able to work on things. Whilst pulling together the Kernel and
the Wimp will be jobs for individuals, many of the other
components can be improved independently.

The graphics system should become largely complete by the end
of this phase, allowing the other components to use its functions.
This will allow the Wimp to be pulled together and developed in
a more functional manner.

Tasks should be able to be implemented, or ported to the 64bit
environment at this point - although a lot of the functionality
may still be sketchy.

Having been recently updated, the Internet stack should be easy
to update, although the drivers may have to come later. Components
like the Econet module may be prototyped in advance of a hardware
implementation (if any should even be produced).

## Target functionality


| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:SystemInit         | Kernel         | Functional |
| Kernel:MemManagement      | Kernel         | Functional |
| Kernel:DAs                | Kernel         | Functional |
| Kernel:VDU                | Kernel         | Functional |
| Kernel:Graphics           | Kernel         | Functional |
| Kernel:Sprites            | Kernel         | Functional |
| Kernel:Exceptions         | Kernel         | Functional |
| Kernel:ProgEnv            | Kernel         | Functional |
| Kernel:Time               | Kernel         | Functional |
| Kernel:Input              | Kernel         | Functional |
| OwnerBanner               | Core           | Functional |
| ShareFS                   | FS             | Functional |
| LanManFS                  | FS             | Functional |
| NetFS                     | FS             | Functional |
| PipeFS                    | FS             | Functional |
| Kernel:Mode               | Graphics       | Functional |
| ColourTrans               | Graphics       | Functional |
| SpriteUtils               | Graphics       | Functional |
| ROMFonts                  | Graphics       | Functional |
| InternationalKeyboard     | I/O            | Functional |
| International             | L12N           | Functional |
| TerritoryManager          | L12N           | Functional |
| UK                        | L12N           | Functional |
| SharedSound               | Audio          | Functional |
| Wimp:Templates            | Desktop        | Functional |
| Wimp:WindowManagement     | Desktop        | Functional |
| Wimp:WindowRender         | Desktop        | Functional |
| Wimp:WindowStacking       | Desktop        | Functional |
| Wimp:Polling              | Desktop        | Functional |
| Wimp:Interaction          | Desktop        | Functional |
| Wimp:IconRender           | Desktop        | Functional |
| Wimp:Memory               | Desktop        | Functional |
| Wimp:ErrorBox             | Desktop        | Functional |
| Wimp:Pointer              | Desktop        | Functional |
| Wimp:Tiling               | Desktop        | Functional |
| Wimp:CommandWindow        | Desktop        | Functional |
| Wimp:Introspection        | Desktop        | Functional |
| Wimp:Startup              | Desktop        | Functional |
| Wimp:SWIs                 | Desktop        | Functional |
| Wimp:Fonts                | Desktop        | Functional |
| Wimp:Menus                | Desktop        | Functional |
| Wimp:Messages             | Desktop        | Functional |
| Wimp:SpriteRender         | Desktop        | Functional |
| Wimp:TaskManagement       | Desktop        | Functional |
| Wimp:SpritePools          | Desktop        | Functional |
| FilterManager             | Desktop        | Functional |
| Desktop                   | Desktop        | Functional |
| OmniDisc                  | Desktop        | Functional |
| TaskManager               | Desktop        | Functional |
| ShellCLI                  | Desktop        | Functional |
| DragAnObject              | Desktop        | Stub |
| Pinboard                  | Desktop        | Investigate |
| Econet                    | Network        | Prototype |
| MbufManager               | Network        | Investigate |
| Internet                  | Network        | Functional |
| InetServices              | Network        | Functional |
| Resolver                  | Network        | Functional |
| RemotePrinterMessages     | Network        | Functional |
| RemotePrinterSupport      | Network        | Functional |
| SysLog                    | Reporting      | Complete |

<!-- Charts go here -->

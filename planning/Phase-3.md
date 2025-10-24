# Phase 3: Stack wiring / advancing functionality

## Summary

Phase 3 is intended to start wiring up larges of the system to make
it ready for higher level components. In particular, bringing up the
filesystem stack and making the graphics system functional.

To allow more foundations for the following phase, the WindowManager
and some desktop components are fleshed out so that they can be
integrated with other parts of the system. Many of the internals for
the WindowManager are isolated and can be built up without worrying
about other parts of the system. By preparing these they will be able
to be integrated into functional components in the next phase.

The filesystem should be able to be made functional for some of the
base file systems like ResourceFS and the SystemDevices (assuming we
actually wish to retain these). With BlockDevices having been added
in phase 2, DOSFS should be able to be made functional.

The graphics system can be brought up beyond having simple colours
with ColourTrans, and the FontManager implemented in some form.

With the sound system having been stubbed in the last phase, it should
be possible to expand this into functional implementations for
SoundChannels and the SoundScheduler, with the SoundDMA internals
being set up so that a hardware implementation can be added later.

The keyboard input system used within InternationalKeyboard needs
a bit of thought, so stubbing it here would help set that up, and
the KeyInput module will be trivial to provide as it is already
in C.


## Target functionality

| Name                      | Stack          | Functionality |
|---------------------------|----------------|---------------|
| Kernel:OSByte             | Kernel         | Functional |
| Kernel:OSWord             | Kernel         | Functional |
| Kernel:DAs                | Kernel         | Internals |
| Kernel:Modules            | Kernel         | Functional |
| Kernel:Vectors            | Kernel         | Functional |
| Kernel:Heap               | Kernel         | Functional |
| Kernel:VDU                | Kernel         | Stub |
| OSSWIs                    | Kernel         | Functional |
| TimerManager              | HW             | Functional |
| BootCommands              | Core           | Functional |
| Squash                    | Core           | Functional |
| InternationalKeyboard     | I/O            | Stub |
| KeyInput                  | I/O            | Functional |
| International             | L12N           | Internals |
| FSLock                    | FS             | Functional |
| FileCore                  | FS             | Investigate |
| RamFS                     | FS             | Functional |
| CDFS                      | FS             | Functional |
| PipeFS                    | FS             | Internals |
| DeviceFS                  | FS             | Internals |
| ResourceFS                | FS             | Functional |
| AIF                       | FS             | Functional |
| TransientUtility          | FS             | Functional |
| DOSFS                     | FS             | Functional |
| NetFS                     | FS             | Internals |
| CDFSdriver                | FS             | Stub |
| SystemDevices             | FS             | Functional |
| SpriteExtend:Scaling      | Graphics       | Functional |
| ColourTrans               | Graphics       | Internals |
| FontManager               | Graphics       | Functional |
| Draw                      | Graphics       | Functional |
| DrawFile                  | Graphics       | Functional |
| ScreenBlanker             | Graphics       | Functional |
| Messages                  | I18N           | Functional |
| AUNMsgs                   | Network        | Functional |
| SoundChannels             | Audio          | Functional |
| SoundDMA                  | Audio          | Internals |
| SoundScheduler            | Audio          | Functional |
| Free                      | Desktop        | Internals |
| Filer                     | Desktop        | Internals |
| FilerSWIs                 | Desktop        | Functional |
| Wimp:CommandWindow        | Desktop        | Internals |
| Wimp:IconRender           | Desktop        | Internals |
| Wimp:SpriteRender         | Desktop        | Internals |
| Wimp:SpritePools          | Desktop        | Internals |
| Wimp:Fonts                | Desktop        | Internals |
| Wimp:WindowRender         | Desktop        | Internals |
| Wimp:TaskManagement       | Desktop        | Internals |
| Wimp:TextRender           | Desktop        | Functional |
| Wimp:Tiling               | Desktop        | Internals |
| Wimp:Memory               | Desktop        | Internals |
| RTC                       | Time           | Functional |


<!-- Charts go here -->

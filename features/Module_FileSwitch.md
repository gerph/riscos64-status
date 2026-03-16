# Module: FileSwitch

## Documentation

* URL: [PRM](http://www.riscos.com/support/developers/prm/fileswitch.html)
* URL: [PRM](http://www.riscos.com/support/developers/prm/fileswitchnew.html)

## Discovered features


* Has application environment
* Has directory access
* Has dynamic code
* Has file access
* Has nvram state
* Has services
* Has services fast
* Sets variables
* Uses console input
* Uses console output
* Uses dynamic area
* Uses heap dynamic area
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Canonicalisation for `&`, `%`, `\` |
| [ ]      | [ ]       | Path variable expansion |
| [ ]      | [ ]       | Path variable expansion with `$` root |
| [ ]      | [ ]       | `File$Path` file access |
| [ ]      | [ ]       | Run calls for absolute |
| [ ]      | [ ]       | Run calls for absolute checks AIF header|
| [ ]      | [ ]       | Run calls for absolute: Compression services |
| [ ]      | [ ]       | Run calls for utility |
| [ ]      | [ ]       | Run calls for untyped |
| [ ]      | [ ]       | Run calls for typed files |
| [ ]      | [ ]       | Service announcements |
| [ ]      | [ ]       | FS registration |
| [ ]      | [ ]       | FS deregistration |
| [ ]      | [ ]       | Public: Directory enumeration |
| [ ]      | [ ]       | Public: Directory enumeration with wildcards |
| [ ]      | [ ]       | FS: Directory enumeration |
| [ ]      | [ ]       | Public: Object information |
| [ ]      | [ ]       | Public: `*Info` date format from `Sys$DateFormat` |
| [ ]      | [ ]       | Public: `*Cat` field width variable |
| [ ]      | [ ]       | FS: Object information |
| [ ]      | [ ]       | FS: `*Info`/`*Ex`/`*LEx` dispatch |
| [ ]      | [ ]       | FS: `*FileInfo` dispatch |
| [ ]      | [ ]       | FS: `*Cat`/`*LCat` dispatch |
| [ ]      | [ ]       | FS: `*Cat`/`*LCat` dispatch |
| [ ]      | [ ]       | Public: Open/close streams |
| [ ]      | [ ]       | Public: Open directories |
| [ ]      | [ ]       | Public: Open faulted for already open for write |
| [ ]      | [ ]       | Public: Read byte/bytes |
| [ ]      | [ ]       | Public: Write byte/bytes |
| [ ]      | [ ]       | Public: Read/Set pointer |
| [ ]      | [ ]       | Public: Read/Set extent |
| [ ]      | [ ]       | Public: EOF check |
| [ ]      | [ ]       | Public: SCB returned |
| [ ]      | [ ]       | Public: Honour access on open files |
| [ ]      | [ ]       | Public: Flush data |
| [ ]      | [ ]       | Public: Upcalls on stream operations |
| [ ]      | [ ]       | Public: Stream handle enumeration |
| [ ]      | [ ]       | FS: Open/close streams |
| [ ]      | [ ]       | FS: Read bytes buffered |
| [ ]      | [ ]       | FS: Write bytes buffered |
| [ ]      | [ ]       | FS: Read byte unbuffered |
| [ ]      | [ ]       | FS: Write byte unbuffered |
| [ ]      | [ ]       | FS: Read bytes unbuffered |
| [ ]      | [ ]       | FS: Write bytes unbuffered |
| [ ]      | [ ]       | FS: Read/Set pointer buffered |
| [ ]      | [ ]       | FS: Read/Set pointer unbuffered |
| [ ]      | [ ]       | FS: Read/Set extent buffered |
| [ ]      | [ ]       | FS: Read/Set extent unbuffered |
| [ ]      | [ ]       | FS: Flush data |
| [ ]      | [ ]       | Public: Apply access attributes to file operations |
| [ ]      | [ ]       | FS: Set file load/exec/attributes |
| [ ]      | [ ]       | Public: Create file |
| [ ]      | [ ]       | Public: Create directory |
| [ ]      | [ ]       | Public: Delete file |
| [ ]      | [ ]       | Public: Delete file faulted for open files|
| [ ]      | [ ]       | FS: Create file |
| [ ]      | [ ]       | FS: Create directory |
| [ ]      | [ ]       | FS: Delete file |
| [ ]      | [ ]       | FS: Upcalls on file operations |
| [ ]      | [ ]       | Public: Load file to memory |
| [ ]      | [ ]       | FS: Load file to memory |
| [ ]      | [ ]       | FS: Load file to memory via open/read/close |
| [ ]      | [ ]       | Public: Load file to memory synchronisation flag |
| [ ]      | [ ]       | Public: Load file to memory for generic code |
| [ ]      | [ ]       | Public: Load file with LoadType |
| [ ]      | [ ]       | Public: Load file with LoadType |
| [ ]      | [ ]       | Public: Save file from memory |
| [ ]      | [ ]       | Public: Save file from memory with filetype |
| [ ]      | [ ]       | FS: Save file from memory |
| [ ]      | [ ]       | FS: Save file from memory via open/write/close |
| [ ]      | [ ]       | Public: Change CSD/Lib/URD |
| [ ]      | [ ]       | Public: Change CSD/Lib/URD sets variables |
| [ ]      | [ ]       | Public: System variables updated on context changes |
| [ ]      | [ ]       | Public: Rename across filesystems faulted |
| [ ]      | [ ]       | FS: Rename files |
| [ ]      | [ ]       | Public: Read/Set boot options |
| [ ]      | [ ]       | Public: Boot from filesystem |
| [ ]      | [ ]       | Public: Free space calls |
| [ ]      | [ ]       | FS: Free space calls |
| [ ]      | [ ]       | Public: Readonly filesystems |
| [ ]      | [ ]       | Public: Interactive filesystems |
| [ ]      | [ ]       | Public: Null length filenames |

... and all the image FS extensions

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*Back` |
| [ ]      | [ ]       | `*CDir` |
| [ ]      | [ ]       | `*Cat` |
| [ ]      | [ ]       | `*Configure FileSystem` |
| [ ]      | [ ]       | `*Configure Truncate` |
| [ ]      | [ ]       | `*Copy` |
| [ ]      | [ ]       | `*Count` |
| [ ]      | [ ]       | `*Dir` |
| [ ]      | [ ]       | `*EnumDir` |
| [ ]      | [ ]       | `*Ex` |
| [ ]      | [ ]       | `*FileInfo` |
| [ ]      | [ ]       | `*Info` |
| [ ]      | [ ]       | `*LCat` |
| [ ]      | [ ]       | `*LEx` |
| [ ]      | [ ]       | `*Lib` |
| [ ]      | [ ]       | `*NoDir` |
| [ ]      | [ ]       | `*NoLib` |
| [ ]      | [ ]       | `*NoURD` |
| [ ]      | [ ]       | `*Rename` |
| [ ]      | [ ]       | `*Run` |
| [ ]      | [ ]       | `*SetType` |
| [ ]      | [ ]       | `*Shut` |
| [ ]      | [ ]       | `*ShutDown` |
| [ ]      | [ ]       | `*Stamp` |
| [ ]      | [ ]       | `*URD` |
| [ ]      | [ ]       | `*Up` |
| [ ]      | [ ]       | `*Wipe` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_CloseFile` |
| [ ]      | [ ]       | `Service_DiscDismounted` |
| [ ]      | [ ]       | `Service_Memory` |
| [ ]      | [ ]       | `Service_Reset` |
| [ ]      | [ ]       | `Service_StartUpFS` |
| [ ]      | [ ]       | `Service_TerritoryStarted` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `?` |
| [ ]      | [ ]       | `UpCallV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_CloseFile` |
| [ ]      | [ ]       | `Service_FSRedeclare` |
| [ ]      | [ ]       | `Service_LookupFileType` |
| [ ]      | [ ]       | `Service_NewApplication` |


### Vectors


*None*


### Events


*None*


### UpCalls


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `UpCall_ModifyingFile` |
| [ ]      | [ ]       | `UpCall_NewApplication` |


### Modules


* `MessageTrans`
* `Territory`
* `Wimp`



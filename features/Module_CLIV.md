# Module: CLIV

## Summary

The command line interpreter provides an interface for the execution of commands
from modules, filesystems and aliases.


## Discovered features


* Has application environment
* Has kernel collusion
* Has services
* Has services fast
* Uses console output
* Uses messagetrans

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Cli processor |
| [ ]      | [ ]       | Terminators for strings are 0, 10, 13 |
| [ ]      | [ ]       | Leading space and `*` characters skipped |
| [ ]      | [ ]       | Leading `|` or terminating character makes the command return without error |
| [ ]      | [ ]       | Command length must not exceed limit. |
| [ ]      | [ ]       | Parse any redirection in the CLI in the form `{` ` ` redirection ` ` filename `}` (for `>`, `<` and `>>`) |
| [ ]      | [ ]       | Redirection may be repeated within the `{}` string. |
| [ ]      | [ ]       | Filesystem name prefixes of -<fs>- or <fs>: change the temporary filesystem |
| [ ]      | [ ]       | Module name prefix of `<module>:` directs to just that module. |
| [ ]      | [ ]       | Module name prefix of `Module#<module>:` case insensitive. |
| [ ]      | [ ]       | Modules selected by prefix are made preferred. |
| [ ]      | [ ]       | Leading `/` causes a file to be run. |
| [ ]      | [ ]       | Leading `%` skips alias checks. |
| [ ]      | [ ]       | `.` is looked up in aliases first, but if fails, becomes an explicit `FSControl_CAT` |
| [ ]      | [ ]       | Command is checked against `Alias$<command>` with `.` terminator treated as a wildcard. |
| [ ]      | [ ]       | Aliases have `OS_SubstituteArgs` to replace `%` sequences. |
| [ ]      | [ ]       | Look at the module table for all commands (non-FS commands) |
| [ ]      | [ ]       | Look at the module table for the FS commands of the current FS |
| [ ]      | [ ]       | Look at the module table for the FS commands of the secondary FS |
| [ ]      | [ ]       | Issue `Service_UKCommand` |
| [ ]      | [ ]       | `FSControl_RUN` to execute an actual command |
| [ ]      | [ ]       | Report error for unknown command |
| [ ]      | [ ]       | Handle module init/final to cache/uncache commands |
| [ ]      | [ ]       | Handle preferred instance to change cache of commands |


### Commands


*None*


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_ModuleStatus` |


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `CliV` |


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_SyntaxError` |
| [ ]      | [ ]       | `Service_UKCommand` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`



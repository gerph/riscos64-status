# Module: WindowManager (Templates)

## Summary

The WindowManager can load template files. The operations to open, close, load templates into window blocks and read details about them are not specific to the WindowManager itself. They can be implemented without any reference to the rest of the WindowManager.

This subcomponent implements that functionality independant of any other Wimp functions. This means that it can be provided well in advance of the rest of the system.

## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/wimp.html)


---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Open/Close template file |
| [X]      | [X]       | Handle wildcards for templates |
| [X]      | [X]       | Read template from template file |
| [X]      | [X]       | Size template from template file |
| [X]      | [X]       | Enumerate templates |
| [X]      | [X]       | Read non-template data from template file |
| [X]      | [X]       | Handle indirected text |
| [>]      | [>]       | Handle fonts |

### Commands

*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Wimp_OpenTemplate` (&400D9) |
| [ ]      | [ ]       | `Wimp_CloseTemplate` (&400DA) |
| [ ]      | [ ]       | `Wimp_LoadTemplate` (&400DB) |
| [X]      | [X]       | Testing `WimpTemplates_OpenTemplate` |
| [X]      | [X]       | Testing `WimpTemplates_CloseTemplate` |
| [X]      | [X]       | Testing `WimpTemplates_LoadTemplate` |


### Services

*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


---

## Issues calls to

### Services


*None*


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


*None*



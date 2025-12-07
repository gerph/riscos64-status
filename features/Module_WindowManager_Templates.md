# Module: WindowManager (Templates)

## Summary

The WindowManager can load template files. The operations to open, close, load templates into window blocks and read details about them are not specific to the WindowManager itself. They can be implemented without any reference to the rest of the WindowManager.

This subcomponent implements that functionality independant of any other Wimp functions. This means that it can be provided well in advance of the rest of the system.

The expectation is that there will be both command line versions of the implementation that can be used for testing, and a fake module which implements the equivalent of the WindowManager SWI calls. This should mean that the subsequent integration to create the WindowManager itself just has to hook the defined SWIs into the existing module.

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
| [X]      | [X]       | Handle fonts |

### Commands

*None*


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Implementation of `Wimp_OpenTemplate` interface in fake module |
| [X]      | [X]       | Implementation of `Wimp_CloseTemplate` interface in fake module |
| [X]      | [X]       | Implementation of `Wimp_LoadTemplate` interface in fake module |


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



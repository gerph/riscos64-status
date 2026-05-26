# Module: VideoTTX

## Discovered features


* Is c
* Uses graphics output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | Video driver |
| [X]      | [X]       | Supports code &80 (Alphanumeric black) |
| [X]      | [X]       | Supports code &81 (Alphanumeric red) |
| [X]      | [X]       | Supports code &82 (Alphanumeric green) |
| [X]      | [X]       | Supports code &83 (Alphanumeric yellow) |
| [X]      | [X]       | Supports code &84 (Alphanumeric blue) |
| [X]      | [X]       | Supports code &85 (Alphanumeric magenta) |
| [X]      | [X]       | Supports code &86 (Alphanumeric cyan) |
| [X]      | [X]       | Supports code &87 (Alphanumeric white) |
| [X]      | [X]       | Supports code &88 (Flashing content) |
| [X]      | [X]       | Supports code &89 (Steady content) |
| [ ]      | [ ]       | Supports code &8A (End preserve box) |
| [ ]      | [ ]       | Supports code &8B (Start preserve box) |
| [X]      | [X]       | Supports code &8C (Normal height) |
| [X]      | [X]       | Supports code &8D (Double height) |
| [X]      | [X]       | Supports code &90 (Graphics black) |
| [X]      | [X]       | Supports code &91 (Graphics red) |
| [X]      | [X]       | Supports code &92 (Graphics green) |
| [X]      | [X]       | Supports code &93 (Graphics yellow) |
| [X]      | [X]       | Supports code &94 (Graphics blue) |
| [X]      | [X]       | Supports code &95 (Graphics magenta) |
| [X]      | [X]       | Supports code &96 (Graphics cyan) |
| [X]      | [X]       | Supports code &97 (Graphics white) |
| [X]      | [X]       | Supports code &98 (Conceal content) |
| [X]      | [X]       | Supports code &99 (Contiguous graphics) |
| [X]      | [X]       | Supports code &9A (Separated graphics) |
| [X]      | [X]       | Supports code &9C (Black background) |
| [X]      | [X]       | Supports code &9D (Set background colour) |
| [X]      | [X]       | Supports code &9E (Hold graphics character) |
| [X]      | [X]       | Supports code &9F (Release graphics character) |
| [X]      | [X]       | Supports conceal/reveal |
| [X]      | [X]       | High resolution text |
| [X]      | [X]       | Supports reading character from screen |

### Commands


*None*


### SWIs


*None*


### Services


*None*


### Vectors


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [X]       | `VideoV` |


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


* `ColourTrans`
* `Font`
* `MessageTrans`
* `SharedCLibrary`



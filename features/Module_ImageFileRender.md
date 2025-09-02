# Module: ImageFileRender

## Discovered features


* Can print
* Has swis
* Is c
* Uses graphics output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*ImageFileRenderers` |
| [X]      | [ ]       | `*ImageFileViewer` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `ImageFileRender_Render` (&562C0) |
| [X]      | [ ]       | `ImageFileRender_BBox` (&562C1) |
| [X]      | [ ]       | `ImageFileRender_Transform` (&562C2) |
| [X]      | [ ]       | `ImageFileRender_DeclareFonts` (&562C3) |
| [X]      | [ ]       | `ImageFileRender_Info` (&562C4) |
| [X]      | [ ]       | `ImageFileRender_RendererInfo` (&562C5) |
| [X]      | [ ]       | `ImageFileRender_Register` (&562C6) |
| [X]      | [ ]       | `ImageFileRender_Deregister` (&562C7) |
| [X]      | [ ]       | `ImageFileRender_EnumerateRenderers` (&562C8) |


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


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `Service_ImageFileRender_Dying` |
| [X]      | [ ]       | `Service_ImageFileRender_RendererChanged` |
| [X]      | [ ]       | `Service_ImageFileRender_Started` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `ColourTrans`
* `DrawFile`
* `JPEG`
* `MessageTrans`
* `SharedCLibrary`
* `Wimp`



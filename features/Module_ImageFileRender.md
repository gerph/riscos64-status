# Module: ImageFileRender

## Discovered features


* Can print
* Has swis
* Is c
* Uses graphics output

---

## Provides

### Functionality


*None found*

### Commands


* `*ImageFileRenderers`
* `*ImageFileViewer`


### SWIs


* `ImageFileRender_Render` (&562C0)
* `ImageFileRender_BBox` (&562C1)
* `ImageFileRender_Transform` (&562C2)
* `ImageFileRender_DeclareFonts` (&562C3)
* `ImageFileRender_Info` (&562C4)
* `ImageFileRender_RendererInfo` (&562C5)
* `ImageFileRender_Register` (&562C6)
* `ImageFileRender_Deregister` (&562C7)
* `ImageFileRender_EnumerateRenderers` (&562C8)


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


* `Service_ImageFileRender_Dying`
* `Service_ImageFileRender_RendererChanged`
* `Service_ImageFileRender_Started`


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



# Module: DMAManager

## Discovered features


* Has services
* Has services fast
* Has swis
* Is hardware specific
* Uses messagetrans

---

## Provides

### Functionality


* Hardware driver

### Commands


*None*


### SWIs


* `DMA_RegisterChannel` (&46140)
* `DMA_DeregisterChannel` (&46141)
* `DMA_QueueTransfer` (&46142)
* `DMA_TerminateTransfer` (&46143)
* `DMA_SuspendTransfer` (&46144)
* `DMA_ResumeTransfer` (&46145)
* `DMA_ExamineTransfer` (&46146)


### Services


* `Service_PagesSafe`
* `Service_PagesUnsafe`
* `Service_Reset`


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


* `MessageTrans`



# Module: SCSIDriver

## Discovered features


* Has swis
* Is c

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|

*None found*

### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `*Devices` |


### SWIs


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [X]      | [ ]       | `SCSI_Version` (&403C0) |
| [X]      | [ ]       | `SCSI_Initialise` (&403C1) |
| [X]      | [ ]       | `SCSI_Control` (&403C2) |
| [X]      | [ ]       | `SCSI_Op` (&403C3) |
| [X]      | [ ]       | `SCSI_Status` (&403C4) |
| [X]      | [ ]       | `SCSI_ReadControlLines` (&403C5) |
| [X]      | [ ]       | `SCSI_EEProm` (&403C6) |
| [X]      | [ ]       | `SCSI_Reserve` (&403C7) |
| [X]      | [ ]       | `SCSI_List` (&403C8) |
| [X]      | [ ]       | `SCSI_TargetControl` (&403C9) |
| [X]      | [ ]       | `SCSI_10` (&403CA) |
| [X]      | [ ]       | `SCSI_11` (&403CB) |
| [X]      | [ ]       | `SCSI_12` (&403CC) |
| [X]      | [ ]       | `SCSI_13` (&403CD) |
| [X]      | [ ]       | `SCSI_14` (&403CE) |
| [X]      | [ ]       | `SCSI_15` (&403CF) |
| [X]      | [ ]       | `SCSI_16` (&403D0) |
| [X]      | [ ]       | `SCSI_17` (&403D1) |
| [X]      | [ ]       | `SCSI_18` (&403D2) |
| [X]      | [ ]       | `SCSI_19` (&403D3) |
| [X]      | [ ]       | `SCSI_20` (&403D4) |
| [X]      | [ ]       | `SCSI_21` (&403D5) |
| [X]      | [ ]       | `SCSI_22` (&403D6) |
| [X]      | [ ]       | `SCSI_23` (&403D7) |
| [X]      | [ ]       | `SCSI_24` (&403D8) |
| [X]      | [ ]       | `SCSI_25` (&403D9) |
| [X]      | [ ]       | `SCSI_26` (&403DA) |
| [X]      | [ ]       | `SCSI_27` (&403DB) |
| [X]      | [ ]       | `SCSI_28` (&403DC) |
| [X]      | [ ]       | `SCSI_29` (&403DD) |
| [X]      | [ ]       | `SCSI_30` (&403DE) |
| [X]      | [ ]       | `SCSI_31` (&403DF) |
| [X]      | [ ]       | `SCSI_32` (&403E0) |
| [X]      | [ ]       | `SCSI_33` (&403E1) |
| [X]      | [ ]       | `SCSI_34` (&403E2) |
| [X]      | [ ]       | `SCSI_35` (&403E3) |
| [X]      | [ ]       | `SCSI_36` (&403E4) |
| [X]      | [ ]       | `SCSI_37` (&403E5) |
| [X]      | [ ]       | `SCSI_38` (&403E6) |
| [X]      | [ ]       | `SCSI_39` (&403E7) |
| [X]      | [ ]       | `SCSI_40` (&403E8) |
| [X]      | [ ]       | `SCSI_41` (&403E9) |
| [X]      | [ ]       | `SCSI_42` (&403EA) |
| [X]      | [ ]       | `SCSI_43` (&403EB) |
| [X]      | [ ]       | `SCSI_44` (&403EC) |
| [X]      | [ ]       | `SCSI_45` (&403ED) |
| [X]      | [ ]       | `SCSI_46` (&403EE) |
| [X]      | [ ]       | `SCSI_47` (&403EF) |
| [X]      | [ ]       | `SCSI_48` (&403F0) |
| [X]      | [ ]       | `SCSI_49` (&403F1) |
| [X]      | [ ]       | `SCSI_50` (&403F2) |
| [X]      | [ ]       | `SCSI_51` (&403F3) |
| [X]      | [ ]       | `SCSI_52` (&403F4) |
| [X]      | [ ]       | `SCSI_53` (&403F5) |
| [X]      | [ ]       | `SCSI_54` (&403F6) |
| [X]      | [ ]       | `SCSI_55` (&403F7) |
| [X]      | [ ]       | `SCSI_56` (&403F8) |
| [X]      | [ ]       | `SCSI_57` (&403F9) |
| [X]      | [ ]       | `SCSI_58` (&403FA) |
| [X]      | [ ]       | `SCSI_59` (&403FB) |
| [X]      | [ ]       | `SCSI_60` (&403FC) |
| [X]      | [ ]       | `SCSI_61` (&403FD) |
| [X]      | [ ]       | `SCSI_Deregister` (&403FE) |
| [X]      | [ ]       | `SCSI_Register` (&403FF) |


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
| [X]      | [ ]       | `Service_SCSIAttached` |
| [X]      | [ ]       | `Service_SCSIDetached` |
| [X]      | [ ]       | `Service_SCSIDying` |
| [X]      | [ ]       | `Service_SCSIStarted` |


### Vectors


*None*


### Events


*None*


### UpCalls


*None*


### Modules


* `MessageTrans`
* `SCSI`
* `SharedCLibrary`



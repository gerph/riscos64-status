# Module: SCSIDriver

## Discovered features


* Has swis
* Is c

---

## Provides

### Functionality


*None found*

### Commands


* `*Devices`


### SWIs


* `SCSI_Version` (&403C0)
* `SCSI_Initialise` (&403C1)
* `SCSI_Control` (&403C2)
* `SCSI_Op` (&403C3)
* `SCSI_Status` (&403C4)
* `SCSI_ReadControlLines` (&403C5)
* `SCSI_EEProm` (&403C6)
* `SCSI_Reserve` (&403C7)
* `SCSI_List` (&403C8)
* `SCSI_TargetControl` (&403C9)
* `SCSI_10` (&403CA)
* `SCSI_11` (&403CB)
* `SCSI_12` (&403CC)
* `SCSI_13` (&403CD)
* `SCSI_14` (&403CE)
* `SCSI_15` (&403CF)
* `SCSI_16` (&403D0)
* `SCSI_17` (&403D1)
* `SCSI_18` (&403D2)
* `SCSI_19` (&403D3)
* `SCSI_20` (&403D4)
* `SCSI_21` (&403D5)
* `SCSI_22` (&403D6)
* `SCSI_23` (&403D7)
* `SCSI_24` (&403D8)
* `SCSI_25` (&403D9)
* `SCSI_26` (&403DA)
* `SCSI_27` (&403DB)
* `SCSI_28` (&403DC)
* `SCSI_29` (&403DD)
* `SCSI_30` (&403DE)
* `SCSI_31` (&403DF)
* `SCSI_32` (&403E0)
* `SCSI_33` (&403E1)
* `SCSI_34` (&403E2)
* `SCSI_35` (&403E3)
* `SCSI_36` (&403E4)
* `SCSI_37` (&403E5)
* `SCSI_38` (&403E6)
* `SCSI_39` (&403E7)
* `SCSI_40` (&403E8)
* `SCSI_41` (&403E9)
* `SCSI_42` (&403EA)
* `SCSI_43` (&403EB)
* `SCSI_44` (&403EC)
* `SCSI_45` (&403ED)
* `SCSI_46` (&403EE)
* `SCSI_47` (&403EF)
* `SCSI_48` (&403F0)
* `SCSI_49` (&403F1)
* `SCSI_50` (&403F2)
* `SCSI_51` (&403F3)
* `SCSI_52` (&403F4)
* `SCSI_53` (&403F5)
* `SCSI_54` (&403F6)
* `SCSI_55` (&403F7)
* `SCSI_56` (&403F8)
* `SCSI_57` (&403F9)
* `SCSI_58` (&403FA)
* `SCSI_59` (&403FB)
* `SCSI_60` (&403FC)
* `SCSI_61` (&403FD)
* `SCSI_Deregister` (&403FE)
* `SCSI_Register` (&403FF)


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


* `Service_SCSIAttached`
* `Service_SCSIDetached`
* `Service_SCSIDying`
* `Service_SCSIStarted`


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



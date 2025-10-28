# Module: BASIC


## Documentation

URL: [PRM](http://www.riscos.com/support/developers/prm/basic.html)

## Discovered features


* Has application environment
* Has dynamic code
* Has file access
* Has pointer control
* Has services
* Has services fast
* Has sound output
* Uses console input
* Uses console output
* Uses graphics output

---

## Provides

### Functionality

| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | Loading tokenised BASIC files |
| [ ]      | [ ]       | Loading textual BASIC files |
| [ ]      | [ ]       | Saving tokenised BASIC files |
| [ ]      | [ ]       | Saving textual BASIC files |
| [ ]      | [ ]       | Psuedo-variable `END` (as variable) |
| [ ]      | [ ]       | Psuedo-variable `HIMEM` |
| [ ]      | [ ]       | Psuedo-variable `LOMEM` |
| [ ]      | [ ]       | Psuedo-variable `PAGE` |
| [ ]      | [ ]       | Psuedo-variable `PTR#` (as function)|
| [ ]      | [ ]       | Psuedo-variable `EXT#` (as function) |
| [ ]      | [ ]       | Psuedo-variable `EOF#` (as function) |
| [ ]      | [ ]       | Pseudo-variable `TIME` |
| [ ]      | [ ]       | Pseudo-variable `TIME$` |
| [ ]      | [ ]       | Pseudo-variable `TOP` |
| [ ]      | [ ]       | Built-in function: `ABS` |
| [ ]      | [ ]       | Built-in function: `ADVAL` |
| [ ]      | [ ]       | Built-in function: `ACS` |
| [ ]      | [ ]       | Built-in function: `ASC` |
| [ ]      | [ ]       | Built-in function: `ASN` |
| [ ]      | [ ]       | Built-in function: `ATN` |
| [ ]      | [ ]       | Built-in function: `BEAT` |
| [ ]      | [ ]       | Built-in function: `BEATS` (as function) |
| [ ]      | [ ]       | Built-in function: `BGET#` |
| [ ]      | [ ]       | Built-in function: `CHR$` |
| [ ]      | [ ]       | Built-in function: `DIM` array (as function) |
| [ ]      | [ ]       | Built-in function: `COS` |
| [ ]      | [ ]       | Built-in function: `DEG` |
| [ ]      | [ ]       | Built-in function: `EXP` |
| [ ]      | [ ]       | Built-in function: `EVAL` |
| [ ]      | [ ]       | Built-in function: `GET` |
| [ ]      | [ ]       | Built-in function: `GET$` |
| [ ]      | [ ]       | Built-in function: `INT` |
| [ ]      | [ ]       | Built-in function: `LEN` |
| [ ]      | [ ]       | Built-in function: `LN` |
| [ ]      | [ ]       | Built-in function: `LOG` |
| [ ]      | [ ]       | Built-in function: `RAD` |
| [ ]      | [ ]       | Built-in function: `RND` |
| [ ]      | [ ]       | Built-in function: `SGN` |
| [ ]      | [ ]       | Built-in function: `SQR` |
| [ ]      | [ ]       | Built-in function: `SIN` |
| [ ]      | [ ]       | Built-in function: `TAN` |
| [ ]      | [ ]       | Built-in function: `VAL` |
| [ ]      | [ ]       | Built-in function: `LEFT$` |
| [ ]      | [ ]       | Built-in function: `OPENIN` |
| [ ]      | [ ]       | Built-in function: `OPENOUT` |
| [ ]      | [ ]       | Built-in function: `OPENUP` |
| [ ]      | [ ]       | Built-in function: `RIGHT$` |
| [ ]      | [ ]       | Built-in function: `STRING$` |
| [ ]      | [ ]       | Built-in function: `INKEY` |
| [ ]      | [ ]       | Built-in function: `INKEY$` |
| [ ]      | [ ]       | Built-in function: `INSTR` |
| [ ]      | [ ]       | Built-in function: `MID$` |
| [ ]      | [ ]       | Built-in function: `MODE` (as function) |
| [ ]      | [ ]       | Built-in function: `POINT` (as function) |
| [ ]      | [ ]       | Built-in function: `POS` |
| [ ]      | [ ]       | Built-in function: `QUIT` (as function) |
| [ ]      | [ ]       | Built-in function: `REPORT` |
| [ ]      | [ ]       | Built-in function: `REPORT$` |
| [ ]      | [ ]       | Built-in function: `STR$` |
| [ ]      | [ ]       | Built-in function: `SUM` |
| [ ]      | [ ]       | Built-in function: `SUMLEN` |
| [ ]      | [ ]       | Built-in function: `TEMPO` |
| [ ]      | [ ]       | Built-in function: `TINT` (as function) |
| [ ]      | [ ]       | Built-in function: `USR` |
| [ ]      | [ ]       | Built-in function: `VDU` (as function) |
| [ ]      | [ ]       | Built-in function: `VPOS` |
| [ ]      | [ ]       | Built-in function: `WIDTH` |
| [ ]      | [ ]       | Built-in function: `ERL` |
| [ ]      | [ ]       | Built-in function: `ERR` |
| [ ]      | [ ]       | Built-in function: `COUNT` |
| [ ]      | [ ]       | Constant: `FALSE` |
| [ ]      | [ ]       | Constant: `TRUE` |
| [ ]      | [ ]       | Constant: `PI` |
| [ ]      | [ ]       | Expression parsing |
| [ ]      | [ ]       | Expression: `FN` |
| [ ]      | [ ]       | Expression: `AND` |
| [ ]      | [ ]       | Expression: `MOD` |
| [ ]      | [ ]       | Expression: `EOR` |
| [ ]      | [ ]       | Expression: `OR` |
| [ ]      | [ ]       | Expression: `NOT` |
| [ ]      | [ ]       | Expression: `DIV` |
| [ ]      | [ ]       | Expression: `+` (operator) |
| [ ]      | [ ]       | Expression: `-` (operator) |
| [ ]      | [ ]       | Expression: `+` (unary) |
| [ ]      | [ ]       | Expression: `-` (unary) |
| [ ]      | [ ]       | Expression: `*` |
| [ ]      | [ ]       | Expression: `/` |
| [ ]      | [ ]       | Expression: `?` (byte memory read) |
| [ ]      | [ ]       | Expression: `!` (word memory read) |
| [ ]      | [ ]       | Expression: `\|` (BASIC float memory read) |
| [ ]      | [ ]       | Expression: `$` (string memory read) |
| [ ]      | [ ]       | Expression: Literal string |
| [ ]      | [ ]       | Expression: Literal integer |
| [ ]      | [ ]       | Expression: Literal float |
| [ ]      | [ ]       | Assignment: unqualified |
| [ ]      | [ ]       | Assignment: `LET` |
| [ ]      | [ ]       | Assignment: array assignment |
| [ ]      | [ ]       | Assignment: `EXT#` |
| [ ]      | [ ]       | Assignment: `HIMEM` |
| [ ]      | [ ]       | Assignment: `LOMEM` |
| [ ]      | [ ]       | Assignment: `PTR#` |
| [ ]      | [ ]       | Assignment: `TIME$` |
| [ ]      | [ ]       | Assignment: `?` (byte memory write) |
| [ ]      | [ ]       | Assignment: `!` (word memory write) |
| [ ]      | [ ]       | Assignment: `\|` (BASIC float memory write) |
| [ ]      | [ ]       | Assignment: `$` (string memory write) |
| [ ]      | [ ]       | Graphics: `BY` |
| [ ]      | [ ]       | Graphics: `CIRCLE` |
| [ ]      | [ ]       | Graphics: `CIRCLE FILL` |
| [ ]      | [ ]       | Graphics: `CLG` |
| [ ]      | [ ]       | Graphics: `DRAW` |
| [ ]      | [ ]       | Graphics: `ELLIPSE` |
| [ ]      | [ ]       | Graphics: `ELLIPSE FILL` |
| [ ]      | [ ]       | Graphics: `GCOL` |
| [ ]      | [ ]       | Graphics: `LINE` |
| [ ]      | [ ]       | Graphics: `MODE` (as statement) |
| [ ]      | [ ]       | Graphics: `MOVE` |
| [ ]      | [ ]       | Graphics: `ORIGIN` |
| [ ]      | [ ]       | Graphics: `PLOT` |
| [ ]      | [ ]       | Graphics: `POINT` |
| [ ]      | [ ]       | Graphics: `WAIT` |
| [ ]      | [ ]       | Graphics: `RECTANGLE` |
| [ ]      | [ ]       | Graphics: `TINT` (as statement) |
| [ ]      | [ ]       | Audio: `BEATS` (as statement) |
| [ ]      | [ ]       | Audio: `ENVELOPE` |
| [ ]      | [ ]       | Audio: `SOUND` |
| [ ]      | [ ]       | Audio: `STEREO` |
| [ ]      | [ ]       | Audio: `TEMPO` (as statement)|
| [ ]      | [ ]       | Audio: `VOICE` |
| [ ]      | [ ]       | Audio: `VOICES` |
| [ ]      | [ ]       | Control flow: `CALL` |
| [ ]      | [ ]       | Control flow: `CASE`...`OF` |
| [ ]      | [ ]       | Control flow: `ELSE` (multi-line) |
| [ ]      | [ ]       | Control flow: `ENDCASE` |
| [ ]      | [ ]       | Control flow: `ENDIF` |
| [ ]      | [ ]       | Control flow: `ENDPROC` |
| [ ]      | [ ]       | Control flow: `ENDWHILE` |
| [ ]      | [ ]       | Control flow: `GOSUB` |
| [ ]      | [ ]       | Control flow: `GOTO` |
| [ ]      | [ ]       | Control flow: `IF` (single line) |
| [ ]      | [ ]       | Control flow: `IF` (multi-line) |
| [ ]      | [ ]       | Control flow: `FN` return (`=`) |
| [ ]      | [ ]       | Control flow: `OTHERWISE` |
| [ ]      | [ ]       | Control flow: `FOR` |
| [ ]      | [ ]       | Control flow: `NEXT` |
| [ ]      | [ ]       | Control flow: `PROC` |
| [ ]      | [ ]       | Control flow: `ON`...`GOSUB` |
| [ ]      | [ ]       | Control flow: `ON`...`GOTO` |
| [ ]      | [ ]       | Control flow: `ON`...`PROC` |
| [ ]      | [ ]       | Control flow: `QUIT` |
| [ ]      | [ ]       | Control flow: `END` (as statement) |
| [ ]      | [ ]       | Control flow: `REPEAT` |
| [ ]      | [ ]       | Control flow: `RETURN` |
| [ ]      | [ ]       | Control flow: `OSCLI` |
| [ ]      | [ ]       | Control flow: `*command` |
| [ ]      | [ ]       | Control flow: `SYS` |
| [ ]      | [ ]       | Control flow: `UNTIL` |
| [ ]      | [ ]       | Control flow: `WHEN` |
| [ ]      | [ ]       | Control flow: `WHILE` |
| [ ]      | [ ]       | Control flow: `THEN` |
| [ ]      | [ ]       | Control flow: `STOP` |
| [ ]      | [ ]       | Text: `CLS` |
| [ ]      | [ ]       | Text: `COLOUR` |
| [ ]      | [ ]       | I/O: `CLOSE#` |
| [ ]      | [ ]       | I/O: `INPUT` |
| [ ]      | [ ]       | I/O: `INPUT LINE` |
| [ ]      | [ ]       | I/O: `INPUT#` |
| [ ]      | [ ]       | I/O: `LINE INPUT` |
| [ ]      | [ ]       | I/O: `BPUT#` |
| [ ]      | [ ]       | I/O: `PRINT` |
| [ ]      | [ ]       | I/O: `PRINT#` |
| [ ]      | [ ]       | I/O: `ON` (as statement) |
| [ ]      | [ ]       | I/O: `OFF` |
| [ ]      | [ ]       | I/O: `TRACE` |
| [ ]      | [ ]       | I/O: `VDU` (as statement) |
| [ ]      | [ ]       | I/O: `GET$#` |
| [ ]      | [ ]       | I/O: `PRINT SPC` |
| [ ]      | [ ]       | I/O: `PRINT TAB` |
| [ ]      | [ ]       | Keyword: `CLEAR` |
| [ ]      | [ ]       | Keyword: `DATA` |
| [ ]      | [ ]       | Keyword: `DEF` |
| [ ]      | [ ]       | Keyword: `DIM` array |
| [ ]      | [ ]       | Keyword: `DIM` memory reservation|
| [ ]      | [ ]       | Keyword: `DIM LOCAL` array |
| [ ]      | [ ]       | Keyword: `LIBRARY` |
| [ ]      | [ ]       | Keyword: `OVERLAY` |
| [ ]      | [ ]       | Keyword: `LOCAL` |
| [ ]      | [ ]       | Keyword: `REM` |
| [ ]      | [ ]       | Keyword: `INSTALL` |
| [ ]      | [ ]       | Keyword: `LEFT$(` (as statement) |
| [ ]      | [ ]       | Keyword: `MID$(` (as statement) |
| [ ]      | [ ]       | Keyword: `RIGHT$(` (as statement) |
| [ ]      | [ ]       | Keyword: `SWAP` |
| [ ]      | [ ]       | Keyword: `MOUSE TO` |
| [ ]      | [ ]       | Keyword: `MOUSE` |
| [ ]      | [ ]       | Data: `RESTORE` |
| [ ]      | [ ]       | Data: `LOCAL DATA` |
| [ ]      | [ ]       | Data: `READ` |
| [ ]      | [ ]       | Error handling: `ERROR` |
| [ ]      | [ ]       | Error handling: `ERROR EXT` |
| [ ]      | [ ]       | Error handling: `ON ERROR` |
| [ ]      | [ ]       | Error handling: `LOCAL ERROR` |
| [ ]      | [ ]       | Error handling: `RESTORE ERROR` |
| [ ]      | [ ]       | Immediate commands: `APPEND` |
| [ ]      | [ ]       | Immediate commands: `AUTO` |
| [ ]      | [ ]       | Immediate commands: `CHAIN` |
| [ ]      | [ ]       | Immediate commands: `CRUNCH` |
| [ ]      | [ ]       | Immediate commands: `DELETE` |
| [ ]      | [ ]       | Immediate commands: `EDIT` |
| [ ]      | [ ]       | Immediate commands: `EDITO` |
| [ ]      | [ ]       | Immediate commands: `HELP` |
| [ ]      | [ ]       | Immediate commands: `LIST` |
| [ ]      | [ ]       | Immediate commands: `LIST` (with match)|
| [ ]      | [ ]       | Immediate commands: `LISTO` |
| [ ]      | [ ]       | Immediate commands: `LOAD` |
| [ ]      | [ ]       | Immediate commands: `LVAR` |
| [ ]      | [ ]       | Immediate commands: `NEW` |
| [ ]      | [ ]       | Immediate commands: `RENUMBER` |
| [ ]      | [ ]       | Immediate commands: `SAVE` |
| [ ]      | [ ]       | Immediate commands: `TEXTLOAD` |
| [ ]      | [ ]       | Immediate commands: `TEXTSAVE` |
| [ ]      | [ ]       | Immediate commands: `TWIN` |
| [ ]      | [ ]       | Immediate commands: `RUN` |
| [ ]      | [ ]       | Immediate commands: `OLD` |
| [ ]      | [ ]       | Number formats with `@%` (`G` general format) |
| [ ]      | [ ]       | Number formats with `@%` (`E` exponent format) |
| [ ]      | [ ]       | Number formats with `@%` (`F` fixed format) |
| [ ]      | [ ]       | Number formats with `@%` (numeric form) |
| [ ]      | [ ]       | Number formats with `@%` (string form) |
| [ ]      | [ ]       | Command line entry with `-quit` |
| [ ]      | [ ]       | Command line entry with `-load` |
| [ ]      | [ ]       | Command line entry with `-chain` |
| [ ]      | [ ]       | Command line entry will implicitly `TEXTLOAD` files |
| [ ]      | [ ]       | ARM assembler |
| [ ]      | [ ]       | AArch64 assembler |


### Commands


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `*BASIC` |


### SWIs


*None*


### Services


| In 32bit | In 64 bit | Interface |
|----------|-----------|-----------|
| [ ]      | [ ]       | `Service_Memory` |


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


* `BASICTrans`
* `ColourTrans`
* `Sound`
* `Wimp`



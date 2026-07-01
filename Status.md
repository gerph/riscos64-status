# Current status of RISC OS 64 development

## Summary

The tables within this document indicate the status of each component.

* `Lang` indicates the RISC OS Classic implementation
* `Filetype` indicates the filetype (for disc based components)
* `C-State` indicates whether there is a port to C (for Asm components), or `-` if the source is already in C.
* `64-state` indicates how functional the component is in 64-bit.

There are footnotes beside the component state notes which indicate how far the development has progressed, limitations, or changes in the implementation of the component.

For a phase-focused view of the status, see the [Progress page](Progress).

## Terminology

Details of the terminology can be found in the [Terminology document](Terminology).

## RISC OS components

<!-- STATUS_TABLES -->

<!-- STATUS_NOTES -->

See also [Languages](https://github.com/gerph/riscos64-status/wiki/Languages)

The Docker build environment provides the build tooling for 32bit and 64bit systems.
The environment is functional as a tooling environment for building applications, utilities and modules.
It currently uses GCC 12 (crosstool-NG-1.26.0).

### Norcroft tools

This section lists the build system components from the regular Norcroft toolchain used on RISC OS, and how they have been addressed with the 64-bit world.

* `amu` - make tool

  Makefile tools can use the standard GNU `make`. Or RISC OS AMU if necessary.

* `cc` - C compiler

  Norcroft is not necessary; GNU `gcc` will work fine. CLI transform can be used
  to manipulate the command line to handle RISC OS style filenames.

* `objasm` - Assembler

  Norcroft is not necessary; GNU `as` will work fine. However, `as` has ugly
  syntax, so a wrapper can be provided which transforms `objasm` syntax into `as`
  assembler.

* `link` - Linker

  Norcroft is not necessary; GNU `ld` will work fine, with a suitable linker
  script. Function signatures can be added with post-processing. Run time
  relocation can be added as necessary.

* `cmhg` - Module header generator

  Norcroft is not necessary; CMunge can be used, with suitable modifications.

  Outstanding issues: Not all interfaces implemented yet.

* `squeeze`/`modsqz` - binary compressor

  Not required, as disk space is cheap, and transmission time is low.



## Services

* RISC OS Pyromaniac demo shell - example RISC OS environment.

  Available in 32bit and 64bit variants, with example applications present.

* RISC OS Build service - API for building RISC OS applications.

  Can run RISC OS Pyromaniac in 32-bit and 64-bit environments, allowing testing
  of built RISC OS 64-bit utilities, absolutes and modules.

# RISC OS 64 porting status

This repository contains information about the status of RISC OS 64 ports of
modules.


## Built components

Some of the absolutes and modules which have been ported can be found within this repository.

* The `rm32` directory contains the 32-bit version of modules.
* The `rm64` directory contains the 64-bit version of modules.
* The `aif32` directory contains the 32-bit version of absolutes.
* The `aif64` directory contains the 64-bit version of absolutes.

Absolutes and modules which are in the process of being created as C code may exist in both directories but may have incomplete implementations.

The files within this repository have rudimentary tests applied to them;
we test absolute by trying to execute it (if we can) and each module by
trying to load it. This is limited, but it proves that the components at
least start.


## Planning the work needed

The work on each component may be simple, or complex - there are some that
may need a lot more work than others. In many cases, parts of the implementation
can be done without needing to build full modules, so there can be progress seen
in general, whilst there isn't as much to show. This also ensures that only
some of the issues that need to be resolved can be deferred until later.

The [plan](https://github.com/gerph/riscos64-status/wiki/Planning) of how the
work should be done is described through a number of phases. Each phase will
make progress on areas of the system to progress the whole.


## Development status

The [current development status](https://github.com/gerph/riscos64-status/wiki/Status)
for each component can be found in the Wiki.

The progress on [each phase of the development](https://github.com/gerph/riscos64-status/wiki/Progress) is also available.


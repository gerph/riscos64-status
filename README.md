# RISC OS 64 porting status

This repository contains information about the status of RISC OS 64 ports of
modules.


## Development status


[![Progress of phase 1](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/ffa42a7f746d38a46a71daf5bb16ce001b790427/Progress-1.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-1)
[![Progress of phase 2](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/Progress-2.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-2)
[![Progress of phase 3](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/Progress-3.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-3)
[![Progress of phase 4](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/Progress-4.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-4)
[![Progress of phase 5](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/Progress-5.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-5)
[![Progress of phase 6](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/Progress-6.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-6)
[![Progress of phase 7](https://gist.githubusercontent.com/gerph/c26e8457269506554ec1f7533d2f9aed/raw/Progress-7.svg)](https://github.com/gerph/riscos64-status/wiki/Phase-7)

The [current development status](https://github.com/gerph/riscos64-status/wiki/Status)
for each component can be found in the Wiki.

The progress on [each phase of the development](https://github.com/gerph/riscos64-status/wiki/Progress) is also available.



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

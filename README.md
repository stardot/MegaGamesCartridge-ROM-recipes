# ROM Making Tools for the Mega Games Cartridge

This directory contains tools and data for building ROMs for the Retro
Hardware Mega Games Cartridge.

## Game Information

The central place for information about games and other pieces of software
titles that can be converted to ROMs is the `roms.csv` file. This file
contains user-visible information, such as the game title and publisher, as
well as information about the files used to create the ROMs and where they
can be obtained.

## Dependencies

Many games are created from UEF files using the `UEF2ROM.py` tool which can be
obtained from [the UEF2ROM repository](https://bitbucket.org/dboddie/uef2rom).
Some are build from disk images which must first be converted to UEF files.
This is performed by a collection of scripts in the `Fixes` directory.

Some of these scripts require the `UEFtrans.py` tool and `UEFfile.py` module
which can be obtained from
[the UEFfile repository](https://bitbucket.org/dboddie/ueffile).

Other scripts require the `ADF2INF.py` tool which can be obtained from
[the ADFSlib repository](https://bitbucket.org/dboddie/adfslib).

## Running the Tools

Running the `fetch-uefs.py` tool should cause all publically available files to
be downloaded into the `UEFs` directory, which will be created if necessary.
Some of these will not be in the correct format. Run the `fix-uefs.py` tool to
produce UEF files for those that require conversion.

The `csv2scripts.py` tool is then used to create `batch.sh` and `testroms.sh`
scripts. The `batch.sh` script is run to create ROM files for each game in the
`ROMs` directory. The `testroms.sh` script runs Elkulator to test each set of
ROMs.

Like the `Fixes` directory, the `patch_files` and `postload` directories
contain additional information that is used to customise certain games so that
they run correctly or simply look nicer when run from ROM.

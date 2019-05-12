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

You will need an emulator if you want to test the ROM images on a modern
machine using the generated `testroms.sh` script. The generated script
assumes that Elkulator is used and expects the `elkulator` executable to be
on the `PATH`.

## Running the Tools

Run the `fetch-uefs.py` tool to download archives for each of the pieces of
software into the `UEFs` directory, which will be created if necessary.

Some of the download files are not in UEF format. Run the `fix-uefs.py` tool
to produce UEF files for those that require conversion.

The `csv2scripts.py` tool is then used to create `batch.sh` and `testroms.sh`
scripts. The `batch.sh` script is run to create ROM files for each game in the
`ROMs` directory. The `testroms.sh` script runs Elkulator to test each set of
ROMs.

Like the `Fixes` directory, the `patch_files` and `postload` directories
contain additional information that is used to customise certain games so that
they run correctly or simply look nicer when run from ROM.

## License

The programs, scripts, Python modules and tools in this repository are licensed
under the GNU General Public License version 3 or later:

  Copyright (C) 2016 David Boddie <david@boddie.org.uk>
 
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.
 
  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.
 
  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.

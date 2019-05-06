#!/usr/bin/env python

import UEFfile, sys

u = UEFfile.UEFfile(sys.argv[1])

# Take the first four blocks of the SPY1 file and split them from the rest of
# the file, renaming the rest as SPY1A.
spy1 = u.contents[3].copy()
spy1a = u.contents[3].copy()

data = spy1['data'][:0x3ff]
data = data[:0xab] + "\r\r\r" + data[0xae:]
spy1['data'] = data

spy1a['name'] = 'SPYvsS'
spy1a['load'] = 0x1100
spy1a['exec'] = 0
spy1a['data'] = spy1a['data'][0x3ff:]

open("temp/SPY1", "wb").write(spy1['data'])
open("temp/SPY1.inf", "w").write("$.SPY1\t900\t95D\t3FF")

open("temp/SPYvsS", "wb").write(spy1a['data'])
open("temp/SPYvsS.inf", "w").write("$.SPYvsS\t1100\t0\t5C40")

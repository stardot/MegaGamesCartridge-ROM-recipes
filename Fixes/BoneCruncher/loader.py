#!/usr/bin/env python

t = (
    "\x16\x05"                                  # MODE 5
    "\x17\x01\x00\x00\x00\x00\x00\x00\x00\x00"  # VDU 23,1,0;0;0;0;
    "\x1c\x00\x1f\x13\x1d"                      # VDU 28,0,31,19,29
    "\x11\x00"                                  # COLOUR 0
    "*/\r\n"
    )
open("temp/LOADER", "w").write(t)
open("temp/LOADER.inf", "w").write("$.LOADER\t0000\t0000\t%x" % len(t))

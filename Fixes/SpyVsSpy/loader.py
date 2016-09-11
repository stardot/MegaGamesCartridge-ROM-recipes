#!/usr/bin/env python

t = (
    "\x16\x05"                                  # MODE 5
    "\x17\x01\x00\x00\x00\x00\x00\x00\x00\x00"  # VDU 23,1,0;0;0;0;
    "\x13\x02\x00\x00\x00\x00"                  # VDU 19,2,0,0,0,0
    "\x13\x00\x04\x00\x00\x00"                  # VDU 19,0,4,0,0,0
    "\x1c\x00\x1f\x13\x1d"                      # VDU 28,0,31,19,29
    "\x11\x82"                                  # COLOUR 130
    "\x0c"                                      # CLS
    "\x11\x02"                                  # COLOUR 2
    "*/SCREEN\r\n"
    "*/SPY1\x11\x03\r\n"                        # COLOUR 3
    )
open("temp/LOADER", "w").write(t)
open("temp/LOADER.inf", "w").write("$.LOADER\t0000\t0000\t%x" % len(t))

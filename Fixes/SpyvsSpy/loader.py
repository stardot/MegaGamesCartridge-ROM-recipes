#!/usr/bin/env python3

t = (
    b"\x16\x05"                                  # MODE 5
    b"\x17\x01\x00\x00\x00\x00\x00\x00\x00\x00"  # VDU 23,1,0;0;0;0;
    b"\x13\x02\x00\x00\x00\x00"                  # VDU 19,2,0,0,0,0
    b"\x13\x00\x04\x00\x00\x00"                  # VDU 19,0,4,0,0,0
    b"\x1c\x00\x1f\x13\x1d"                      # VDU 28,0,31,19,29
    b"\x11\x82"                                  # COLOUR 130
    b"\x0c"                                      # CLS
    b"\x11\x02"                                  # COLOUR 2
    b"*LOAD SCREEN\r\n"
    b"*/SPY1\x11\x03\r\n"                        # COLOUR 3
    )
open("temp/LOADER", "wb").write(t)
open("temp/LOADER.inf", "w").write("$.LOADER\t0000\t0000\t%x" % len(t))

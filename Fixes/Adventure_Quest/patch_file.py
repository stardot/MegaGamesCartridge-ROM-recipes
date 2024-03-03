#!/usr/bin/env python3

t = open("temp/QUEST", "rb").read()
u = (b"\x00" * 0xb00) + t[0xb00:]
open("temp/QUEST", "wb").write(u)

t = b"\x11\x00MODE6:?&34E=10:CLS:VDU28,0,11,39,0:*/\r"
open("temp/LOADER", "wb").write(t)
open("temp/LOADER.inf", "wb").write("$.LOADER\t0000\t0000\t%x" % len(t))

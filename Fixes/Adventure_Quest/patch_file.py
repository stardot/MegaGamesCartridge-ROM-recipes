#!/usr/bin/env python

t = open("temp/QUEST", "rb").read()
u = ("\x00" * 0xb00) + t[0xb00:]
open("temp/QUEST", "wb").write(u)

t = "\x11\x00MODE6:?&34E=10:CLS:VDU28,0,11,39,0:*/\r"
open("temp/LOADER", "wb").write(t)
open("temp/LOADER.inf", "wb").write("$.LOADER\t0000\t0000\t%x" % len(t))

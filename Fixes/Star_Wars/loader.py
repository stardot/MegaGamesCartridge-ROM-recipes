#!/usr/bin/env python

t = open("temp/STARW", "rb").read()
t = t.replace("*L.STARscr FFFF3780", "*RUN STARscr       ")
open("temp/STARW", "wb").write(t)

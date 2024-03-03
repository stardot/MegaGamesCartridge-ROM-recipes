#!/usr/bin/env python3

t = open("temp/STARW", "rb").read()
t = t.replace(b"*L.STARscr FFFF3780", b"*RUN STARscr       ")
open("temp/STARW", "wb").write(t)

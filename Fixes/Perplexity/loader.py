#!/usr/bin/env python3

t = open("temp/START", "rb").read()
t = t.replace(b"*L.LOADSCR", b"*/ LOADSCR")
open("temp/START", "wb").write(t)

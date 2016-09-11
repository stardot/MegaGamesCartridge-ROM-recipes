#!/usr/bin/env python

t = open("temp/START", "rb").read()
t = t.replace("*L.LOADSCR", "*/ LOADSCR")
open("temp/START", "wb").write(t)

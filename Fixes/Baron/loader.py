#!/usr/bin/env python3

t = open("temp/BARON2", "rb").read()
t = t.replace(b"*LOAD BARSCR 5800", b"*/ BARSCR        ")
open("temp/BARON3", "wb").write(t)
open("temp/BARON3.inf", "w").write("$.BARON2\t1900\t1900\t%x" % len(t))

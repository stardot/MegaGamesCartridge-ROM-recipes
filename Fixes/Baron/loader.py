#!/usr/bin/env python

t = open("temp/BARON2").read()
t = t.replace("*LOAD BARSCR 5800", "*/ BARSCR        ")
open("temp/BARON3", "w").write(t)
open("temp/BARON3.inf", "w").write("$.BARON2\t1900\t1900\t%x" % len(t))

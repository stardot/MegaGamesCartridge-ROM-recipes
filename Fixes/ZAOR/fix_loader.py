#!/usr/bin/env python

import sys

t = open(sys.argv[1], "rb").read()
t = t.replace("*TAPE", "*****")
t = t.replace(" 28,0,0,0,0", "28,2,5,10,2")
t = t.replace("  STOP   ", "         ")
t = t.replace("   THE   ", "         ")
t = t.replace(" TAPE !! ", "         ")
open(sys.argv[1], "wb").write(t)

s = open(sys.argv[2], "rb").read()
p1 = ""
p2 = ""
for i in range(4):
    p1 += s[8 + i]
    p2 += s[0x144 + i]

s = p1 + p2 + s[8:]
open(sys.argv[2], "wb").write(s)

t = open(sys.argv[3], "rb").read()
t = t.replace("*TAPE", "*****")
t = t.replace("STOP THE TAPE!!", "               ")
open(sys.argv[3], "wb").write(t)

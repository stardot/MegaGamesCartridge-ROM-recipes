#!/usr/bin/env python3

import sys

t = open(sys.argv[1], "rb").read()
t = t.replace(b"*TAPE", b"*****")
t = t.replace(b" 28,0,0,0,0", b"28,2,5,10,2")
t = t.replace(b"  STOP   ", b"         ")
t = t.replace(b"   THE   ", b"         ")
t = t.replace(b" TAPE !! ", b"         ")
open(sys.argv[1], "wb").write(t)

s = open(sys.argv[2], "rb").read()
p1 = []
p2 = []
for i in range(4):
    p1.append(s[8 + i])
    p2.append(s[0x144 + i])

s = bytes(p1 + p2) + s[8:]
open(sys.argv[2], "wb").write(s)

t = open(sys.argv[3], "rb").read()
t = t.replace(b"*TAPE", b"*****")
t = t.replace(b"STOP THE TAPE!!", b"               ")
open(sys.argv[3], "wb").write(t)

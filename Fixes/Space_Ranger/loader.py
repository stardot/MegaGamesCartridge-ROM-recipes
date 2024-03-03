#!/usr/bin/env python3

t = open("temp/RANGER", "rb").read()
t = t.replace(b"*TAPE", b"*****")
t = t.replace(b"*FX178,0", b"********")
open("temp/RANGER", "wb").write(t)

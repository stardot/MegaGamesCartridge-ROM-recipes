#!/usr/bin/env python

t = open("temp/RANGER", "rb").read()
t = t.replace("*TAPE", "*****")
t = t.replace("*FX178,0", "********")
open("temp/RANGER", "wb").write(t)

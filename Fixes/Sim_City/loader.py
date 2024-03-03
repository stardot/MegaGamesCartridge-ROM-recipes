#!/usr/bin/env python

t = open("temp/SIM_CITY", "rb").read()
t = t.replace(b"*L.SIMSCR1 5800", b"*RUN SIMSCR1   ")
open("temp/SIM_CITY", "wb").write(t)

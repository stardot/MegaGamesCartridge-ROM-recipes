#!/usr/bin/env python

t = open("temp/SIM_CITY", "rb").read()
t = t.replace("*L.SIMSCR1 5800", "*RUN SIMSCR1   ")
open("temp/SIM_CITY", "wb").write(t)

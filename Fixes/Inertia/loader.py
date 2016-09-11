#!/usr/bin/env python

t = open("temp/Inertia", "rb").read()
t = t.replace("*LOAD 1 6980", "*RUN 1      ")
t = t.replace("*LOAD 2 8C0", "*RUN 2     ")
open("temp/Inertia", "wb").write(t)

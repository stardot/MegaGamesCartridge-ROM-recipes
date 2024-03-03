#!/usr/bin/env python3

t = open("temp/Inertia", "rb").read()
t = t.replace(b"*LOAD 1 6980", b"*RUN 1      ")
t = t.replace(b"*LOAD 2 8C0", b"*RUN 2     ")
open("temp/Inertia", "wb").write(t)

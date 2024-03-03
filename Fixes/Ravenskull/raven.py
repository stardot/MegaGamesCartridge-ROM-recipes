#!/usr/bin/env python3

t = open("temp/RAVENSKULL", "rb").read()
t = t.replace(b"*LOAD PIC", b"*        ")
t = t.replace(b"*T.", b"*/ ")
open("temp/RAVENSKULL", "wb").write(t)

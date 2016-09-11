#!/usr/bin/env python

t = open("temp/RAVENSKULL", "rb").read()
t = t.replace("*LOAD PIC", "*        ")
t = t.replace("*T.", "*/ ")
open("temp/RAVENSKULL", "wb").write(t)

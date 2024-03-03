#!/usr/bin/env python3

t = open("temp/JOE2", "rb").read()
t = t[:0x19] + b"\xea\xea" + t[0x1b:]
open("temp/JOE2", "wb").write(t)

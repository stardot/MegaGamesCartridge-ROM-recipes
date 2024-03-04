#!/usr/bin/env python3

import os, shlex, sys

# Change the file name of the last file in the penultimate file.
t = open("temp/Lunar2", "rb").read()
t = b"Lunar33" + t[7:]
open("temp/Lunar2", "wb").write(t)

# Patch out the JMP (&FFFC) reset call EORed with 0x0e in the final file.
# 0x04 is 0xea ^ 0x0e where 0xea is the opcode for NOP.
t = open("temp/Lunar3\xc3", "rb").read()
t = t[:0x261e] + b"\x04\x04\x04" + t[0x2621:]
open("temp/Lunar33", "wb").write(t)

t = open("temp/Lunar3\xc3.inf", "rb").read()
t = t.replace(b"\xc3", b"3")
open("temp/Lunar33.inf", "wb").write(t)

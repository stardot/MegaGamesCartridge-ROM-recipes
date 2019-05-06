#!/usr/bin/env python

import commands, os, sys

# Patch out the JMP (&FFFC) reset call EORed with 0x0e in the final file.
# 0x04 is 0xea ^ 0x0e where 0xea is the opcode for NOP.
t = open("temp/Lunar3\xc3").read()
t = t[:0x261e] + "\x04\x04\x04" + t[0x2621:]
open("temp/Lunar3\xc3", "wb").write(t)

os.system("UEFtrans.py " + commands.mkarg(sys.argv[1]) + " insert 3 temp/Lunar3\xc3")

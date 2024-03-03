#!/usr/bin/env python3

t = open("temp/NETWOR0", "rb").read()
#t = t.replace("\x12*L.screen 5BC0", "\x0a*L.SCR\x0d\x01\xaf\x0a\xd6\x26\x31\x39\x30\x30")
t = t.replace(b"*L.screen 5BC0", b"*RUN SCREEN   ")
open("temp/NETWOR0", "wb").write(t)
#open("temp/NETWOR0.inf", "wb").write("$.NETWOR0\te00\te00\t%x" % len(t))

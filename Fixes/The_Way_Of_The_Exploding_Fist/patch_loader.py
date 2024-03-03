t = open("temp/2.FLOAD", "rb").read()
s1 = b"\xeb5:\xef23,1,0;0;0;0;:\xef21"
s2 = b"LDA#6:JSR&FFEE"
t = t[:0x5a] + bytes([len(s1) + 4]) + s1 + t[0x6f:0x2d5] + \
    b"\x0d\x01\x03" + bytes([len(s2) + 4]) + s2 + t[0x2d5:]

open("temp/2.FLOAD", "wb").write(t)

open("temp/2.FLOAD.inf", "w").write("$.FLOAD ff1900 ff8023 %x" % len(t))

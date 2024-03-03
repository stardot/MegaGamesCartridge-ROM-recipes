t = open("temp/CONFUZION", "rb").read()
#t = t[:0x19] + (
#    "\xa9\x0d\xea" # lda $3cc -> lda #$0d; nop
#    ) + t[0x1c:0x22] + (
#    "\xa2\x22\xea" # ldx $3cd -> ldx #$22; nop
#    ) + t[0x25:0x29] + (
#    "\x49\x91\xea" # eor $3ca -> eor #$91; nop
#    ) + t[0x2c:]

t = (# Update CFS checks.
     b"\xa9\x91"     # lda #$91
     b"\x8d\xca\x03" # sta $3ca
     b"\xa9\x0e"     # lda #$0e
     b"\x8d\xcb\x03" # sta $3cb
     b"\xa9\x0d"     # lda #$0d
     b"\x8d\xcc\x03" # sta $3cc
     b"\xa9\x22"     # lda #$22
     b"\x8d\xcd\x03" # sta $3cd
     b"\xa9\x42"     # lda #$42
     b"\x8d\xce\x03" # sta $3ce
     ) + t

open("temp/CONFUZION", "wb").write(t)
open("temp/CONFUZION.inf", "w").write("$.CONFUZION\td37\td37\t%x" % len(t))

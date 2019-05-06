t = (# Disable Plus 1 features that cause problems.
     "\x0c\x11\x00*FX163,128,1\r"
     "?&212=&D6\r"
     "?&213=&F1\r"
     'CHAIN"CONLOAD"\x11\x01\r'
     )

open("temp/LOADER", "wb").write(t)
open("temp/LOADER.inf", "w").write("$.LOADER\t0\t0\t%x" % len(t))

t = open("temp/CONFUZION", "rb").read()
#t = t[:0x19] + (
#    "\xa9\x0d\xea" # lda $3cc -> lda #$0d; nop
#    ) + t[0x1c:0x22] + (
#    "\xa2\x22\xea" # ldx $3cd -> ldx #$22; nop
#    ) + t[0x25:0x29] + (
#    "\x49\x91\xea" # eor $3ca -> eor #$91; nop
#    ) + t[0x2c:]

t = (# Update CFS checks.
     "\xa9\x91"     # lda #$91
     "\x8d\xca\x03" # sta $3ca
     "\xa9\x0e"     # lda #$0e
     "\x8d\xcb\x03" # sta $3cb
     "\xa9\x0d"     # lda #$0d
     "\x8d\xcc\x03" # sta $3cc
     "\xa9\x22"     # lda #$22
     "\x8d\xcd\x03" # sta $3cd
     "\xa9\x42"     # lda #$42
     "\x8d\xce\x03" # sta $3ce
     ) + t

open("temp/CONFUZION", "wb").write(t)
open("temp/CONFUZION.inf", "w").write("$.CONFUZION\td37\td37\t%x" % len(t))

def unscramble_data(data):

    new_data = ""
    for i in range(len(data)):
    
        new_data += chr(ord(data[i]) ^ ((i + 1) % 256))
    
    return new_data

for i in range(0, 20):
    s = chr(65 + i)
    t = open("temp/DECK" + s).read()
    u = unscramble_data(t)
    open("temp/DECK" + s, "w").write(u)

#t = open("temp/Game").read()
#t = ("\xa9"     # lda #$eb      AD lda $3ce
#     "\xeb"     #               CE
#     "\x85"     # sta $70       03
#     "\x70"     #               85 sta $70
#     "\xa9"     #               70
#     "\x2f"     # lda #$2f      AD lda $3cd
#     "\x85"     #               CD
#     "\x71"     # sta $71       03
#     "\xa9"     # lda #$60      85 sta $71
#     "\x60"     #               71
#     "\x8d"     # sta $3ce      A2 ldx #0
#     "\xce"     #               00
#     "\x03"     #               A1 lda ($70,x)
#     "\xa1"     # lda ($70,x)   70
#     "\x70"     #               4D eor $3cb
#     "\x49"     # eor #$a5      CB
#     "\xa5") + t[17:] #         03
#open("temp/Game", "w").write(t)

t = open("temp/Vars").read()
t = t[:0x290] + "\xea\xea" + t[0x292:]
open("temp/Vars", "w").write(t)

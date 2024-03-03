t = open("temp/SJ1", "rb").read()
s1 = b'\xf1:\xf1"       Space Jailer Instructions"\':\xf1'
s2 = b'\xf1:\xf1"       Space Jailer Instructions"'
s3 = b'\xf1" KEYS"\''
s4 = b'\xf1" LEVELS"\''
t = t[:0x32] + s1 + ((0x6f - 0x32 - len(s1))*b" ") + t[0x6f:0x254] + \
    s2 + ((0x291 - 0x254 - len(s2))*b" ") + t[0x291:0x297] + \
    s3 + ((0x2b8 - 0x297 - len(s3))*b" ") + t[0x2b8:0x3e7] + \
    s4 + ((0x409 - 0x3e7 - len(s4))*b" ") + t[0x409:]
t = t.replace(b'\xf1:\xf2C(', b"\xf1    ")
t = t.replace(b'\xf2C("', b'\xf1  "')
t = t.replace(b'"\x83', b'" ')
t = t.replace(b'")', b'" ')

t = t.replace(b' , as they attempt', b' as they attempt  ')

t = t.replace(b'.You have 9 Kings per game.When all"',
              b'.":\xf1:\xf1" You have 9 Kings per game."\'')

t = t.replace(b'  9 kings are lost you commit suicide."',
              b'When all 9 kings are lost you die.   "\'')

t = t.replace(b'a King , they are returned to the jail."',
              b'a King, they are returned to the jail." ')

t = t.replace(b'bricks or Kings." ', b'bricks or Kings."\'')

t = t.replace(b'\x88SPACE\x89', b" SPACE ")
t = t.replace(b'Caps lock ',
              b'Z ........')
t = t.replace(b'Ctrl ', b'X ...')
t = t.replace(b'\x83Return ...... Fire photon.',
                  b'Return ...... Fire photon. ')
t = t.replace(b'\x83Escape ...... Return to high scores',
                  b'Escape ...... Return to high scores ')
t = t.replace(b'\x83P ', b' P ')
t = t.replace(b'\x83O ', b' O ')
t = t.replace(b'"\x88\x83Extra base at level 5 " ',
              b':\xf1" Extra base at level 5" ')
t = t.replace(b'\x851 ', b' 1 ')
t = t.replace(b'\x852 ', b' 2 ')
t = t.replace(b'\x855 ', b' 5 ')
t = t.replace(b'\x856 ', b' 6 ')
t = t.replace(b'\x859 ', b' 9 ')
t = t.replace(b'  PRESS SPACE TO BEGIN..', b'PRESS SPACE TO BEGIN    ')

open("temp/SJ1", "wb").write(t)

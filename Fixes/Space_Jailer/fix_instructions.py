t = open("temp/SJ1", "rb").read()
s1 = '\xf1:\xf1"       Space Jailer Instructions"\':\xf1'
s2 = '\xf1:\xf1"       Space Jailer Instructions"'
s3 = '\xf1" KEYS"\''
s4 = '\xf1" LEVELS"\''
t = t[:0x32] + s1 + ((0x6f - 0x32 - len(s1))*" ") + t[0x6f:0x254] + \
    s2 + ((0x291 - 0x254 - len(s2))*" ") + t[0x291:0x297] + \
    s3 + ((0x2b8 - 0x297 - len(s3))*" ") + t[0x2b8:0x3e7] + \
    s4 + ((0x409 - 0x3e7 - len(s4))*" ") + t[0x409:]
t = t.replace('\xf1:\xf2C(', "\xf1    ")
t = t.replace('\xf2C("', '\xf1  "')
t = t.replace('"\x83', '" ')
t = t.replace('")', '" ')

t = t.replace('.You have 9 Kings per game.When all"',
              '.":\xf1:\xf1" You have 9 Kings per game."\'')

t = t.replace('  9 kings are lost you commit suicide."',
              'When all 9 kings are lost you die.   "\'')

t = t.replace('a King , they are returned to the jail."',
              'a King, they are returned to the jail." ')

t = t.replace('bricks or Kings." ', 'bricks or Kings."\'')

t = t.replace('\x88SPACE\x89', " SPACE ")
t = t.replace('Caps lock ',
              'Z ........')
t = t.replace('Ctrl ', 'X ...')
t = t.replace('\x83Return ...... Fire photon.',
                  'Return ...... Fire photon. ')
t = t.replace('\x83Escape ...... Return to high scores',
                  'Escape ...... Return to high scores ')
t = t.replace('\x83P ', ' P ')
t = t.replace('\x83O ', ' O ')
t = t.replace('"\x88\x83Extra base at level 5 " ',
              ':\xf1" Extra base at level 5" ')
t = t.replace('\x851 ', ' 1 ')
t = t.replace('\x852 ', ' 2 ')
t = t.replace('\x855 ', ' 5 ')
t = t.replace('\x856 ', ' 6 ')
t = t.replace('\x859 ', ' 9 ')
t = t.replace('  PRESS SPACE TO BEGIN..', 'PRESS SPACE TO BEGIN    ')

open("temp/SJ1", "wb").write(t)

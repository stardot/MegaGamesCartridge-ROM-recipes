#!/usr/bin/env python

t = open("temp/WARS", "rb").read()

# 6d9: 0x83 (131)
# 6dc: 0x8d (141)
# 6e7: 0x83 (131)
# 6ea: 0x8d (141)
# 686: 0x82 (130)

# 8c2: 0x86 (134)
# 8c5: 0x8d (141)
# 8d0: 0x86 (134)
# 8d3: 0x8d (141)

l = [# Level (double height text)
     (0x3cd, "\x0a"),   # VDU 10 (down)
     (0x3d0, "\x09"),   # VDU 9 (right)
     (0x3e3, "\x00"),   # VDU 0 (nothing)
     (0x3e6, "\x09"),   # VDU 9 (right)
     
     # Galaxy Wars Hall Of Fame (double height text)
     (0x62d, "\x0a"),   # down
     (0x630, "\x09"),   # right
     (0x63b, "\x00"),   # nothing
     (0x63e, "\x09"),   # right
     #(0x6a3, "GALAXY"),
     #(0x6dc, "\x8d"),
     # GALAXY WARS (double height text)
     (0x6d9, "\x00"),   # nothing
     (0x6dc, "\x09"),   # right
     (0x6e7, "\x0b"),   # up
     (0x6ea, "\x09"),   # right
     (0x6f4, "\x0a"),   # extra space between the title and the instructions
     (0x770, '"Z", "X" and "Return"'),
     
     # Bug_Byte 1982 (double height text)
     (0x8be, "\x09"),   # cursor x = 9
     (0x8c2, "\x00"),   # nothing
     (0x8c5, "\x09"),   # right
     (0x8cc, "\x09"),   # cursor x = 9
     (0x8d0, "\x0b"),   # up
     (0x8d3, "\x09"),   # right
     (0x83f, "P to freeze the action. "),
     (0x330e, "\xb6"),  # Fire = Return
     (0x330f, "\x9e"),  # Left = Z
     (0x3314, "\xc8"),  # Pause = P
     (0x3371, "\xbd")]  # Right = X

# Sort the list in case we have accidentally added items to it out of order.
l.sort()
u = ""
i = 0
for offset, c in l:
    u += t[i:offset] + c
    i = offset + len(c)

u += t[i:]

open("temp/WARS", "wb").write(u)

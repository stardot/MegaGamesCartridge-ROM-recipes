#!/usr/bin/env python3

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
     (0x3cd, b"\x0a"),   # VDU 10 (down)
     (0x3d0, b"\x09"),   # VDU 9 (right)
     (0x3e3, b"\x00"),   # VDU 0 (nothing)
     (0x3e6, b"\x09"),   # VDU 9 (right)
     
     # Galaxy Wars Hall Of Fame (double height text)
     (0x62d, b"\x0a"),   # down
     (0x630, b"\x09"),   # right
     (0x63b, b"\x00"),   # nothing
     (0x63e, b"\x09"),   # right
     #(0x6a3, "GALAXY"),
     #(0x6dc, "\x8d"),
     # GALAXY WARS (double height text)
     (0x6d9, b"\x00"),   # nothing
     (0x6dc, b"\x09"),   # right
     (0x6e7, b"\x0b"),   # up
     (0x6ea, b"\x09"),   # right
     (0x6f4, b"\x0a"),   # extra space between the title and the instructions
     (0x770, b'"Z", "X" and "Return"'),
     
     # Bug_Byte 1982 (double height text)
     (0x8be, b"\x09"),   # cursor x = 9
     (0x8c2, b"\x00"),   # nothing
     (0x8c5, b"\x09"),   # right
     (0x8cc, b"\x09"),   # cursor x = 9
     (0x8d0, b"\x0b"),   # up
     (0x8d3, b"\x09"),   # right
     (0x83f, b"P to freeze the action. "),
     (0x330e, b"\xb6"),  # Fire = Return
     (0x330f, b"\x9e"),  # Left = Z
     (0x3314, b"\xc8"),  # Pause = P
     (0x3371, b"\xbd")]  # Right = X

# Sort the list in case we have accidentally added items to it out of order.
l.sort()
u = b""
i = 0
for offset, c in l:
    u += t[i:offset] + c
    i = offset + len(c)

u += t[i:]

open("temp/WARS", "wb").write(u)

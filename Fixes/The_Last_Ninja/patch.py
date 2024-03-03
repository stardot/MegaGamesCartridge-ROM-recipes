import sys

t = open(sys.argv[1], "rb").read()
t = t.replace(b"FX178,0", b"*******")

#s = ""
#i = 0x2a1
#inside = False
#
#while i < 0x2f9:
#    c = t[i] 
#    if c == "*" and not inside:
#        s += c
#        inside = True
#    
#    elif inside:
#        if c == "\r":
#            s += c
#            inside = False
#        else:
#            s += "*"
#    else:
#        s += c
#    
#    i += 1
#
#t = t[:0x2a1] + s + t[0x2f9:]

open(sys.argv[1], "wb").write(t)

def unscramble_data(data):

    new_data = ""
    for i in range(len(data)):
    
        new_data += chr(ord(data[i]) ^ (i % 256))
    
    return new_data

for i in range(1, 26):
    t = open("temp/Level%i" % i).read()
    u = unscramble_data(t)
    open("temp/Level%i" % i, "w").write(u)


t = open("temp/LOADER").read()
t = t[:0x50] + "\x60" + t[0x51:]
open("temp/LOADER", "w").write(t)

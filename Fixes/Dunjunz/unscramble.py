def unscramble_data(data):

    new_data = []
    for i in range(len(data)):
        new_data.append(data[i] ^ (i % 256))
    
    return bytes(new_data)

for i in range(1, 26):
    t = open("temp/Level%i" % i, "rb").read()
    u = unscramble_data(t)
    open("temp/Level%i" % i, "wb").write(u)


t = open("temp/LOADER", "rb").read()
t = t[:0x50] + b"\x60" + t[0x51:]
open("temp/LOADER", "wb").write(t)

#!/usr/bin/env python3

t = open("temp/Loader", "rb").read()
t = t.replace(
    b"*FX 200 1",
    b"\xef 21     "
    ).replace(
    b' 3000"',
    b'" : \xef6'
    )
open("temp/Loader", "wb").write(t)

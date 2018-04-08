#!/usr/bin/env python

t = open("temp/Loader").read()
t = t.replace(
    "*FX 200 1",
    "\xef 21     "
    ).replace(
    ' 3000"',
    '" : \xef6'
    )
open("temp/Loader", "w").write(t)

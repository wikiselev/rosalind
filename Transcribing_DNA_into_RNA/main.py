#! /usr/bin/env python

# TODO: none
#
#
# Author: Vladimir Kiselev

import sys

f = open("dataset.txt", 'r')
string_in = f.read()
f.close()

string_out = ""

for i in range(0, len(string_in), 1):
    if string_in[i] == "T":
        string_out = string_out + "U"
    else: string_out = string_out + string_in[i]

f = open("output.txt", 'w')
print >>f, string_out
f.close()

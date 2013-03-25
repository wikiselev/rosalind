#! /usr/bin/env python

# TODO: none
#
#
# Author: Vladimir Kiselev

import sys

f = open("dataset.txt", 'r')
string_in = f.read()
f.close()

rev_string_in = string_in[::-1] # reverse the in string

string_out = ""

for i in range(0, len(rev_string_in), 1):
    if rev_string_in[i] == "A":
        string_out = string_out + "T"
    if rev_string_in[i] == "C":
        string_out = string_out + "G"
    if rev_string_in[i] == "G":
        string_out = string_out + "C"
    if rev_string_in[i] == "T":
        string_out = string_out + "A"

f = open("output.txt", 'w')
print >>f, string_out
f.close()

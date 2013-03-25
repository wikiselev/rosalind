#! /usr/bin/env python

# TODO: none
#
#
# Author: Vladimir Kiselev

import sys

f = open("dataset.txt", 'r')
string = f.read()
f.close()

let_A = 0
let_C = 0
let_G = 0
let_T = 0

for i in range(0, len(string), 1):
    if string[i] == "A":
        let_A = let_A + 1
    if string[i] == "C":
        let_C = let_C + 1
    if string[i] == "G":
        let_G = let_G + 1
    if string[i] == "T":
        let_T = let_T + 1

f = open("output.txt", 'w')
print >>f, let_A, " ", let_C, " ", let_G, " ", let_T
f.close()

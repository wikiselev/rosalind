#! /usr/bin/env python

# TODO: none
#
#
# Author: Vladimir Kiselev

import sys

n = int(sys.argv[1])
k = int(sys.argv[2])

def fib(n, k):
	previousFib = 0
	currentFib = 1

	if n == 0:
		return 0
	else:
		for i in range(1, n):
			newFib = k*previousFib + currentFib
			previousFib = currentFib
			currentFib = newFib

	return currentFib


print fib(n, k)
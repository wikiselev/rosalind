#! /usr/bin/env python

# TODO: none
#
#
# Author: Vladimir Kiselev

import sys

n = int(sys.argv[1])
m = int(sys.argv[2])

def fib(n, m):
	# First compute m Fibonacci numbers and store them in a list
	previousFib = 1
	currentFib = 1
	l = [1, 1]
	for i in range(3, m+1):
		# F(n) = k*F(n-2) + F(n-1)
		newFib = 1*previousFib + currentFib
		previousFib = currentFib
		currentFib = newFib
		l.append(currentFib)
	# somehow need to add 1 in the beginning
	l.insert(0, 1)
	print l

	# Now use 0, -1 and -2 from the list to compute the next element
	for i in range(m+1, n+1):
		l.append(l[-1] + l[-2] - l[0])
		# every step remove the first element from the list
		l.pop(0)
		print l

	return l[-1]
	
print fib(n, m)

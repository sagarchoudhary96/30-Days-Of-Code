#!/bin/python

import sys


N = int(raw_input().strip())
for i in range(1, 11):
    print str(N) +" x " + str(i) + " = " + str(N*i)

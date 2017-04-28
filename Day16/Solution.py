#!/bin/python

import sys


S = raw_input().strip()
try: 
    r = int(S)
    print r
except ValueError:
    print "Bad String"


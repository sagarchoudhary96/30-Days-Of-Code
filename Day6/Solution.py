#!/bin/python

import sys

def printEvenIndexChar(s):
    l = len(s)
    output = ""
    for i in range(0,l,2):
        output += s[i]
    return output

def printOddIndexChar(s):
    l = len(s)
    output = ""
    for i in range(1,l,2):
        output += s[i]
    return output

t = int(input())
for a0 in range(0,t):
    s = input()
    print(printEvenIndexChar(s) + " " + printOddIndexChar(s))

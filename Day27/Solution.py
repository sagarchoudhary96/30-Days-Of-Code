print "3"
print "4 3"
print "-1 0 1 4"
print "5 3"
print "0 2 -4 -6 9"
print "6 4"
print "1 0 -3 4 -2 7"
t = int(raw_input())
for a0 in xrange(t):
    count=0
    n,k = map(int,raw_input().split())
    a = [int(i) for i in raw_input().split()]
    for a_i in xrange(n):
        if(a[a_i]<=0):
            count+=1
    if(count>=k):
        print "NO"
    else:
        print "YES"


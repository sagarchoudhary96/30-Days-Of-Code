da, ma, ya = raw_input().split(' ')
da = int(da)
ma = int(ma)
ya = int(ya)
de, me, ye = raw_input().split(' ')
de = int(de)
me = int(me)
ye = int(ye)
fine = 0
if(ye==ya):
    if(me < ma):
        fine = (ma - me) * 500
    elif((me == ma) and (de < da)):
        fine = (da - de) * 15
elif(ye < ya):
    fine = 10000

print fine
  

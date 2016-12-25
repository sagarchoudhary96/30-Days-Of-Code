import math
t = int(input())
for i in range(0, t):
    num = int(input())

    if (num == 2):
        print ("Prime")
    elif (num < 2):
        print ("Not prime")
    else:
        flag = 0
        for j in range(2, math.ceil(math.sqrt(num)) + 1):
            if (num % j == 0):
                flag = 1
                break

        if (flag == 0):
            print ("Prime")
        else:
            print ("Not prime")

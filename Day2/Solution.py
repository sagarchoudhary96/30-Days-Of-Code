mealCost = float(input())
tip = int(input())
tax = int(input())
tip=tip*mealCost/100;
tax=tax*mealCost/100;
totalcost=mealCost+tip+tax;

print ("The total meal cost is %s dollars." %str(int(round(totalcost, 0))))

mealCost = float(raw_input())
tip = int(raw_input())
tax = int(raw_input())
tip=tip*mealCost/100;
tax=tax*mealCost/100;
totalcost=mealCost+tip+tax;

print ("The total meal cost is %s dollars." %str(int(round(totalcost, 0)))

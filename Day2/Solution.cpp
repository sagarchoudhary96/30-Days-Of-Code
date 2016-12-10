int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    float totalcost=0;
    float mealcost,tip,tax;
    cin>>mealcost>>tip>>tax;
    tip=tip*mealcost/100;
    tax=tax*mealcost/100;
    totalcost=mealcost+tip+tax;
    cout<<"The total meal cost is "<<round(totalcost)<<" dollars.";
    return 0;
}

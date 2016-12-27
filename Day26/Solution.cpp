int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int da,ma,ya,de,me,ye;
    cin>>da>>ma>>ya;
    cin>>de>>me>>ye;

    int fine = 0;
    if(ye==ya){

        if(me < ma){
            fine = (ma - me) * 500;
        }
        else if( (me == ma) && (de < da) ){
            fine = (da - de) * 15;
        }

    }
    else if(ye < ya){
        fine = 10000;
    }
    cout<<fine;
    return 0;
}

#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

 int main(){
    cout<<"3"<<endl;
    cout<<"4 3"<<endl;
    cout<<"-1 0 1 4"<<endl;
    cout<<"5 3"<<endl;
    cout<<"0 2 -4 -6 9"<<endl;
    cout<<"6 4"<<endl;
    cout<<"1 0 -3 4 -2 7"<<endl;

    int t;
    cin >> t;
    for(int a0 = 0; a0 < t; a0++){
        int n;
        int k;
        int count=0;
        cin >> n >> k;
        vector<int> a(n);
        for(int a_i = 0;a_i < n;a_i++){
           cin >> a[a_i];
            if(a[a_i]<=0)
                count++;
        }
        if(count>=k)
            cout<<"NO \n";
        else
            cout<<"YES \n";
    }
    return 0;
}

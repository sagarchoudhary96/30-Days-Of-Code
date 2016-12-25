int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
        int t;
        cin >> t;
        for (int i=0; i < t; i++){
            int flag = 0;
            int num;
            cin >> num;
            if (num < 2){
                cout << "Not prime\n";
            }
            else
            {
                for (int j=2; j <= sqrt(num); j++){
                    if (num%j == 0){
                        flag =1;
                        break;
                    }
                }
                if (flag == 0){
                    cout << "Prime\n";
                }
                else {
                    cout << "Not prime\n";
                }
            }

        }

    return 0;
}

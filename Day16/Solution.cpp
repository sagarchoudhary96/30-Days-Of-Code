int main(){
    string S;
    cin >> S;
    try {
        int result = stoi(S);
        cout<<result;
    }
    catch(invalid_argument& e) {
        cout<<"Bad String";
    }
    return 0;
}

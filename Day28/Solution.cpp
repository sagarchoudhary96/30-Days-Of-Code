#include <regex>

using namespace std;


int main(){
    int N;
    cin >> N;
    list<string> names;
    for(int a0 = 0; a0 < N; a0++){
        string firstName;
        string emailID;
        cin >> firstName >> emailID;
        if (regex_match (emailID, regex(".+@gmail.com") )){
            names.push_back(firstName);
        }
    }
    names.sort();
    while (!names.empty())
    {
        cout << names.front()<<endl;
        names.pop_front();
    }

    return 0;
}

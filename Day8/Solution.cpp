int main() {
    int n;
    cin >>n;
    map<string, string> phonebook;
    string name, id;
    for (int i=0; i<n;i++) {
      cin>>name >> id;
      phonebook[name] = id;
    }
    while(cin >> name) {
    if (phonebook.find(name) != phonebook.end()) {
        cout << name << "=" << phonebook.find(name)->second << endl;
    } else {
        cout << "Not found" << endl;
    }
}

    return 0;
}


class MyBook:public Book {
    
    int price;
    public:
        MyBook(string title, string author, int p):Book(title, author) {
            price = p;
        }

        void display() {
            cout<<"Title: "<<title<<endl;
            cout<<"Author: "<<author<<endl;
            cout<<"Price: "<<price<<endl;
        }
};

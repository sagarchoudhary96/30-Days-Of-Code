class Calculator: public exception {
   
  public:
    const char * what () const throw(){
      return "n and p should be non-negative";
   }
    int power(int n, int p){
        if (n<0 || p<0){
            throw Calculator();
        }
        else {
            return pow(n,p);
        }
    }
};

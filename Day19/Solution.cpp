class Calculator: public AdvancedArithmetic{
    int sum =1;
    public:
        int divisorSum(int num){
            for (int i=2;i<=num;i++){
                if (num%i==0){
                    sum +=i;
                }
            }
            return sum;
        }
};


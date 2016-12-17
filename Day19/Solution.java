class Calculator implements AdvancedArithmetic{

    public int divisorSum(int n){
        int divisorSum=n;
        for(int i=1;i<n;i++)
        {
            if(n%i==0)
                divisorSum += i;
        }
        return divisorSum;
    }
} 

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int arr[][] = new int[6][6];
        for(int i=0; i < 6; i++){
            for(int j=0; j < 6; j++){
                arr[i][j] = in.nextInt();
            }
        }

        int max = -65;  // max is initialized -65 because if all element all -9 their sum will be -65 no hour glass can have sum                                less than this
        for(int i=0;i<4;i++)
        {
            for(int j=0;j<4;j++)
                {
                    int sum=0;
                    sum= arr[i][j]+arr[i][j+1]+arr[i][j+2]+arr[i+1][j+1]+arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2];

                    if(sum>max)
                        {
                            max =sum;

                    }
            }
        }
         System.out.println(max);
    }
}

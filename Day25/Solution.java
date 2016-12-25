public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. */
        Scanner sc = new Scanner(System.in);
        int t = sc.nextInt();
        for (int i=0; i < t; i++){
            int flag = 0;
            int num = sc.nextInt();
            if (num < 2){
                System.out.println("Not prime");
            }
            else
            {
                for (int j=2; j <= Math.sqrt(num); j++){
                    if (num%j == 0){
                        flag =1;
                        break;
                    }
                }
                if (flag == 0){
                    System.out.println("Prime");
                }
                else {
                    System.out.println("Not prime");
                }
            }

        }

    }
}

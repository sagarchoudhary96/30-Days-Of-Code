public class Solution {

    Scanner scanner = new Scanner(System.in);
    String S;
    int t;
    public int setTestCase(){
        t = scanner.nextInt();
        scanner.nextLine();
        return t;
    }
    public void setString(){

        S = scanner.nextLine();
    }
    public void checkString(){

            int flag=0;
            int n = S.length();
            for(int i=1,j=n-1;i<n && j>=1;i++,j--){
                if(Math.abs(S.charAt(i)-S.charAt(i-1))!=Math.abs(S.charAt(j)-S.charAt(j-1)))
                {
                    flag=1;
                    break;
                }
            }
             if(flag==1)
                System.out.println("Not Funny");
             else
               System.out.println("Funny");
         }


    public static void main(String[] args) {

        Solution num = new Solution();
        int T = num.setTestCase();

        for(int a0=0;a0<T;a0++){
            num.setString();
            num.checkString();
        }
    }
}

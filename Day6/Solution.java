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
    public void printEvenIndexChar(){
        int len = S.length();
        for (int i = 0;i < len; i++){
            if(i%2 ==0)
                System.out.print(S.charAt(i));
        }

    }

    public void printOddIndexChar(){
        int len = S.length();
        for (int i = 0;i < len; i++){
            if(i%2 !=0)
                System.out.print(S.charAt(i));
        }

    }


    public static void main(String[] args) {

        Solution num = new Solution();
        int T = num.setTestCase();

        for(int a0=0;a0<T;a0++){
            num.setString();
            num.printEvenIndexChar();
            System.out.print(" ");
            num.printOddIndexChar();
            System.out.print("\n");
        }
    }
}

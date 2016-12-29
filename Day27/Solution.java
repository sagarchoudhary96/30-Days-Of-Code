public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        System.out.println("3");
        System.out.println("4 3");
        System.out.println("-1 0 1 4");
        System.out.println("5 3");
        System.out.println("0 2 -4 -6 9");
        System.out.println("6 4");
        System.out.println("1 0 -3 4 -2 7");

        Scanner sc = new Scanner(System.in);
        int t = sc.nextInt();
        for(int a0 = 0; a0 < t; a0++){
            int n = sc.nextInt();
            int k = sc.nextInt();
            int count=0;
            int[] a = new int[n];
            for(int a_i = 0;a_i < n;a_i++){
                a[a_i] = sc.nextInt();
                if(a[a_i]<=0)
                    count++;
            }
            if(count>=k)
                System.out.println("NO");
            else
                System.out.println("YES");
        }
    }
}

public class Solution {

    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner sc = new Scanner(System.in);
        //da,ma,ya are for the actual date
        //de, me, ye are for expected book return date
        int da,ma,ya,de,me,ye;
        da = sc.nextInt();
        ma = sc.nextInt();
        ya = sc.nextInt();
        de = sc.nextInt();
        me = sc.nextInt();
        ye = sc.nextInt();

        int fine = 0;

        if(ye==ya){

            if(me < ma){
                fine = (ma - me) * 500;
            }
            else if( (me == ma) && (de < da) ){
                fine = (da - de) * 15;
            }

        }
        else if(ye < ya){
            fine = 10000;
        }
        System.out.println(fine);
    }
}

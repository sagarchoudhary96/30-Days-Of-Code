public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        String S = in.next();
        try{
            Integer.parseInt(S);
            System.out.println(S);
        }catch(NumberFormatException e){
                System.out.println("Bad String");
        }

    }
}

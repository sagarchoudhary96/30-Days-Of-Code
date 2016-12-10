public class Solution {

   public static void main(String[] args) {
      Scanner scan = new Scanner(System.in);
      int n = scan.nextInt();
      scan.close();
      String ans="";

      // if 'n' is NOT evenly divisible by 2 (i.e.: n is odd)
      if(n%2==1){
         ans = "Weird";
      }
      else{
          if(n>20)
              ans="Not Weird";
         // Complete the code
          else{
              if(n>=6)
                  ans="Weird";
              else
                  ans="Not Weird";
          }
      }
      System.out.println(ans);
   }
}

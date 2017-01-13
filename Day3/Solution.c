int main(){
    int n;
    scanf("%d",&n);
    char ans[40];

      // if 'n' is NOT evenly divisible by 2 (i.e.: n is odd)
      if(n%2==1){
         strcpy(ans, "Weird");
      }
      else{
          if(n>20)
              strcpy(ans, "Not Weird");
         // Complete the code
          else{
              if(n>=6)
                  strcpy(ans, "Weird");
              else
                  strcpy(ans, "Not Weird");
          }
      }
      printf("%s", ans);
    return 0;
}

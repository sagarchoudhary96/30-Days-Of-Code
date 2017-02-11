#include <stdio.h>

int main(){
    printf("3\n");
    printf("4 3\n");
    printf("-1 0 1 4\n");
    printf("5 3\n");
    printf("0 2 -4 -6 9\n");
    printf("6 4\n");
    printf("1 0 -3 4 -2 7\n");

    int t;
    scanf("%d", &t);
    for(int a0 = 0; a0 < t; a0++){
        int n;
        int k;
        int count=0;
        scanf("%d%d", &n,&k);
        int  a[n];
        for(int a_i = 0;a_i < n;a_i++){
          scanf("%d", &a[a_i]);
            if(a[a_i]<=0)
                count++;
        }
        if(count>=k)
            printf("NO \n");
        else
            printf("YES \n");
    }
    return 0;
}

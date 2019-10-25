package main
import "fmt"

func main() {
    //Enter your code here. Read input from STDIN. Print output to STDOUT
    var da, ma, ya, de, me, ye int

    // read input
    fmt.Scanf("%d", &da)
    fmt.Scanf("%d", &ma)
    fmt.Scanf("%d", &ya)
    fmt.Scanf("%d", &de)
    fmt.Scanf("%d", &me)
    fmt.Scanf("%d", &ye)

    fine := 0
    if ye==ya {
        if me < ma {
             fine = (ma - me) * 500
        } else if((me == ma) && (de < da)) {
            fine = (da - de) * 15
        }
    } else if ye < ya {
        fine = 10000
    }

    fmt.Println(fine)
}

package main
import(
    "fmt"
    "math"
)

func main() {
    //Enter your code here. Read input from STDIN. Print output to STDOUT
    var n,number int

    // take the inputs
    fmt.Scanf("%d", &n)
    for i:=0; i<n; i++ {
        fmt.Scanf("%d",&number)
        fmt.Println(checkPrime(number))
    }
}

func checkPrime(number int) string {
    if number == 1 {
        return "Not prime"
    }

    sq := int(math.Sqrt(float64(number)))
    for i:=2; i<sq+1; i++ {
        if number % i == 0 {
            return "Not prime"
        }
    }
    return "Prime"
}

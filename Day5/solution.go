package main
import "fmt"

func main() {
  var number int
  fmt.Scanf("%v", &number)
  
  for i := 1; i <= 10; i++ {
    fmt.Println(number, "x", i, "=", number*i)
  }
}

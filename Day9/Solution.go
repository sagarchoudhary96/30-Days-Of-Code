package main
import "fmt"

var n int

func factorial(n int) int{
  if(n<=1){
    return 1
  } else{
    return n*factorial(n-1)
  }
}

func main(){
  fmt.Scan(&n)
  fmt.Print(factorial(n))
}

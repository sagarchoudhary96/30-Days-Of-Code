package main
import (
  "fmt"
)

func main() {
  var size int;
  fmt.Scanf("%d", &size)
  
  var array = make([]int, size)
  for i := 0; i < size; i++ {
    fmt.Scanf("%d", &array[i])
  }
  
  for i := size; i > 0; i-- {
    fmt.Printf("%d ", array[i-1])
  }
}

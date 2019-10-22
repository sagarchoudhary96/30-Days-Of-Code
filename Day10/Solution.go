package main
import "fmt"

var n int
var max int = 0
var count int = 0

func main(){
  fmt.Scan(&n)
  
  for n>0{
      if(n%2 == 1){
          count++
      } else{
          count = 0
      }
      
      if(max<count){
          max = count
      }  
      n/=2
  }
  
  fmt.Print(max)
}

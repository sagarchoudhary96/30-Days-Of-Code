package main


import (
  "fmt"
  "os"
  "bufio"
  "strconv"
)

func main() {
    var _ = strconv.Itoa // Ignore this comment. You can still use the package "strconv".

    var i uint64 = 4
    var d float64 = 4.0
    var s string = "HackerRank "

    scanner := bufio.NewScanner(os.Stdin)
    // Declare second integer, double, and String variables.
    var second_int uint64
    var second_double float64
    var second_string string

    // Read and save an integer, double, and String to your variables.
    scanner.Scan()
    second_int, _ = strconv.ParseUint(scanner.Text(), 10, 64)

    scanner.Scan()
    second_double, _ =  strconv.ParseFloat(scanner.Text() , 64)

    scanner.Scan()
    second_string = scanner.Text()

    // Print the sum of both integer variables on a new line.
    fmt.Printf("%d\n", i+second_int)

    // Print the sum of the double variables on a new line.
    fmt.Printf("%.1f\n", d+second_double)

    // Concatenate and print the String variables on a new line
    // The 's' variable above should be printed first.
    fmt.Printf("%s\n", s+second_string)
}

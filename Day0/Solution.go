package main

import (
    "bufio"
    "fmt"
    "os"
)
func main() {
    //bufio package is used to help reading from Stdin
    reader := bufio.NewReader(os.Stdin)
    //Read a line from Stdin into the 'input' variable
    input, _ := reader.ReadString('\n')

    fmt.Println("Hello, World.")
    fmt.Println(input)
}

package main

import (
    "bufio"
    "bytes"
    "fmt"
    "os"
)

func transform(line string) string {
    var buffer bytes.Buffer;

    for i := 0; i < len(line); i += 2 {
        buffer.WriteByte(line[i])
    }
    
    buffer.WriteString(" ")
    
    for i := 1; i < len(line); i += 2 {
        buffer.WriteByte(line[i])
    }
    
    return buffer.String()
}

func main() {
    var numCases int
    fmt.Scanf("%d", &numCases)

    scanner := bufio.NewScanner(os.Stdin)

    for i := 0; i < numCases; i++ {
        if scanner.Scan() {
            fmt.Println(transform(scanner.Text()))
        }
    }
}

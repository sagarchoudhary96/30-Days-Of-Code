package main

import (
    "bufio"
    "fmt"
    "io"
    "os"
    "strconv"
    "strings"
)

func main() {
    reader := bufio.NewReaderSize(os.Stdin, 1024 * 1024)

    NTemp, err := strconv.ParseInt(readLine(reader), 10, 64)
    checkError(err)
    N := int32(NTemp)
	//print "Weird" if N is odd or (even and in between 6 and 20 inclusive)
    if N % 2 == 1 || N >= 6 && N <= 20 {
        fmt.Print("Weird")
    } else if N >= 2 && N <= 5 || N > 20 {
		//print "Not Weird" is N is even and (in between 2 and 5 inclusive or greater than 20
        fmt.Print("Not Weird")
    }
}

func readLine(reader *bufio.Reader) string {
    str, _, err := reader.ReadLine()
    if err == io.EOF {
        return ""
    }

    return strings.TrimRight(string(str), "\r\n")
}

func checkError(err error) {
    if err != nil {
        panic(err)
    }
}

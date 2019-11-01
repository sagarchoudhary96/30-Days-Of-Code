package main

import (
    "bufio"
    "fmt"
    "io"
    "os"
    "strconv"
    "strings"
    "regexp"
    "sort"
)

func main() {
    reader := bufio.NewReaderSize(os.Stdin, 1024 * 1024)

    NTemp, err := strconv.ParseInt(readLine(reader), 10, 64)
    checkError(err)
    N := int32(NTemp)
    //Express the condition "email address ends in @gamil.com" using Regex
    var requiredRegex = regexp.MustCompile(`.*@gmail\.com$`)
    var nameList []string
    //create a slice to store the names satisfying the regex
    nameList = make([]string, 0)
    for NItr := 0; NItr < int(N); NItr++ {
        firstNameEmailID := strings.Split(readLine(reader), " ")

        firstName := firstNameEmailID[0]

        emailID := firstNameEmailID[1]
        //check if emailID satisfies the regex. If yes, add the name to nameList
        if requiredRegex.MatchString(emailID) {
            nameList = append(nameList, firstName)
        }
    }
    //Sort the slice in alphabetical order
    sort.Strings(nameList)
    //Print the contents of the nameList
    for _, item := range(nameList) {
        fmt.Println(item)
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

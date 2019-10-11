package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	in := bufio.NewScanner(os.Stdin)
	in.Scan()
	n, _ := strconv.Atoi(in.Text())

	phoneBook := make(map[string]int)

	for i := 0; i < n; i++ {
		in.Scan()
		input := in.Text()
		values := strings.Split(input, " ")
		name := values[0]
		phone, _ := strconv.Atoi(values[1])

		phoneBook[name] = phone
	}

	for {
		in.Scan()
		key := in.Text()
		if key == "" {
			break
		}

		if value, ok := phoneBook[key]; ok {
			fmt.Printf("%s=%d\n", key, value)
		} else {
			fmt.Println("Not found")
		}
	}
}

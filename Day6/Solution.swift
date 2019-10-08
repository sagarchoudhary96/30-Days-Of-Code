func printEvenIndexChars(arr: [String]) -> String {
    var evens = ""
    for i in 0...arr.count-1 {
        if(i % 2 == 0) {
            evens += arr[i]
        }
    }
    return evens
}

func printOddIndexChars(arr: [String]) -> String {
    var odds = ""
    for i in 0...arr.count-1 {
        if(i % 2 == 1) {
            odds += arr[i]
        }
    }
    return odds
}

let num: Int? = Int(readLine()!)

for i in 0...num!-1 {
    let input = readLine()!

    var arr = [String]()
    for char in input {
        arr.append(String(char))
    }

    print(printEvenIndexChars(arr: arr) + " " + printOddIndexChars(arr: arr))
}

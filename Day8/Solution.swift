// Enter your code here. Read input from STDIN. Print output to STDOUT

var phoneBook: [String:String] = [:]
let n = Int(readLine()!)!

for i in 1...n {
    let currentLine = readLine()!.split(separator: " ")
    phoneBook[String(currentLine[0])] = String(currentLine[1])
}

while(1==1) {
    if let query = readLine() {
        if(phoneBook[query] != nil) {
            print(query + "=" + phoneBook[query]!)
        } else {
            print("Not found")
        }
    } else {
        break
    }
}

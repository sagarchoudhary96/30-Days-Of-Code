import Foundation

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

var binary = String(n, radix: 2)
let ones = binary.components(separatedBy: "0")
var highestCount = 0

for i in ones {
    if(i.count > highestCount) {
        highestCount = i.count
    }
}

print(highestCount)

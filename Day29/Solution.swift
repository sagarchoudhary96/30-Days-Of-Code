import Foundation

let testCases = Int(readLine() ?? "") ?? 0
var n = 0
var k = 0

for _ in 0..<testCases {
    let input = readLine()?.split(separator: " ").map {Int($0)}
    n = input?[0] ?? 0
    k = input?[1] ?? 0
    var max = 0
    for x in 1..<n {
        for y in x+1...n {
            if ( x & y) < k && ( x & y) > max {
                max = x & y
            }
        }
    }
    print(max)
}

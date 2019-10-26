import Foundation

extension NSRegularExpression {
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf16.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
}

let testCases = Int(readLine() ?? "") ?? 0
let regex = try? NSRegularExpression(pattern: "[a-z]@gmail.com")
var gmailUsers = [String]()

for _ in 0..<testCases {
    let input = readLine()?.split(separator: " ").map {String($0)}
    if regex?.matches(input?[1] ?? "") ?? false {
        gmailUsers.append(input?[0] ?? "")
    }
}

gmailUsers.sort()
gmailUsers.forEach{print($0)}

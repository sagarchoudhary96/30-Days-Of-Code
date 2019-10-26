import Foundation

extension Int {
    func isPrime() -> Bool {
        guard self >= 2 else { return false }
        guard self != 2 else { return true }
        let max = Int(ceil(sqrt(Double(self))))
        
        for number in 2...max {
            if self % number == 0 { return false }
        }
        return true
    }
}

let testCases = Int(readLine() ?? "") ?? 0

for _ in 0..<testCases {
    let numberToTest = Int(readLine() ?? "") ?? 0
    print(numberToTest.isPrime() ? "Prime" : "Not prime")
}

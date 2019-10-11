import Foundation

//To create a 6x6 2D Array.
var arr = Array(repeating: Array( repeating: 0, count: 6), count: 6)

//To fill i and j values into matrix which is 0 to 5.
for i in stride(from: 0, through: 5, by: 1) {
    let value = readLine()!.components(separatedBy: " ").map{Int($0)!}
    arr[i] = value.map {Int($0)}
}

//To calculate the largest (maximum) hourglass sum
var maxHourglassSum = -9 * 7;
for i in stride(from: 0, through: 5, by: 1) {
    for j in stride(from: 0, through: 5, by: 1) {
        if j + 2 < 6 && i + 2 < 6 {
            let top = arr[i][j] + arr[i][j + 1] + arr[i][j + 2]
            let mid = arr[i + 1][j + 1]
            let bot = arr[i + 2][j] + arr[i + 2][j + 1] + arr[i + 2][j + 2];
            let sum = top + mid + bot
            if sum > maxHourglassSum {
                maxHourglassSum = sum
            }
        }
    }
}

//To print maximum hourglass sum
print(maxHourglassSum)

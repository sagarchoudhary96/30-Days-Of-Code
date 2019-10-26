import Foundation

struct LibraryDate {
    let day: UInt16
    let month: UInt16
    let year: UInt16
}

let input1 = readLine()?.split(separator: " ").map {UInt16($0)}
let input2 = readLine()?.split(separator: " ").map {UInt16($0)}

let returnedDate = LibraryDate(day: input1?[0] ?? 0, month: input1?[1] ?? 1, year: input1?[2] ?? 1)
let dueDate = LibraryDate(day: input2?[0] ?? 0, month: input2?[1] ?? 1, year: input2?[2] ?? 1)

var fine: UInt16 = 0

if returnedDate.year == dueDate.year {
    if (returnedDate.month > dueDate.month) {
        fine = (returnedDate.month - dueDate.month) * 500
    } else if returnedDate.month == dueDate.month && returnedDate.day > dueDate.day {
        fine = (returnedDate.day - dueDate.day) * 15
    }
} else if returnedDate.year > dueDate.year {
    fine = 10000
}

print(fine)

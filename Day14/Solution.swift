import Foundation

class Difference {
    private var elements = [Int]()
    var maximumDifference: Int
    
    /*
     *   Initializer
     *
     *   Parameters:
     *   a - A array of integers denoting the elements.
     */
    init(a: [Int]) {
        self.elements = a
        self.maximumDifference = 0
    }
    
    //To compute the maximum difference
    func computeDifference() {
        
        //To Satisfies constraint specified in task
        guard elements.count >= 1, elements.count <= 100 else { return }
        
        //To sort the array in ascending order
        elements.sort{$0 < $1}
        
        //To compute the difference between greatest and least in the array.
        maximumDifference = elements.last! - elements.first!
    }
} // End of Difference class

//Take input elements
let n = Int(readLine()!)!
let a = readLine()!.components(separatedBy: " ").map{ Int($0)! }

//Create Difference class instance
let d = Difference(a: a)
d.computeDifference()
print(d.maximumDifference)

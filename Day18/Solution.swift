import Foundation

class Solution {
  //Write your code here
  var stack = [Character]()
  var queue = [Character]()

  func pushCharacter(ch: Character){
      self.stack.append(ch)
  }

  func enqueueCharacter(ch: Character){
      self.queue.append(ch)
  }

  func popCharacter() -> Character {
      let first = self.stack[0]
      self.stack.removeFirst()
      return first
  }

  func dequeueCharacter() -> Character {
      let last = self.queue[self.queue.count - 1]
      self.queue.removeLast()
      return last
  }
}

// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for character in s { 
    obj.pushCharacter(ch: character)
    obj.enqueueCharacter(ch: character) 
}


var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false

        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}

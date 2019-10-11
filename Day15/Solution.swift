import Foundation

class Node {
  let data: Int
  var next: Node?
  
  init(data: Int) {
    self.data = data
  }
}

func insert(head: Node?, data: Int!) -> Node? {
  var head = head
  if head == nil {head = Node(data: data)} else {
    var currentNode: Node = head!
    while currentNode.next != nil {currentNode = currentNode.next!}
    currentNode.next = Node(data: data)
  }
  return head!
}

func display(head: Node?) {
  var current = head
  
  while current != nil {
    print(current!.data, terminator: " ")
    current = current!.next
  }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
  let element = Int(readLine()!)!
  head = insert(head: head, data: element)
}

display(head: head)

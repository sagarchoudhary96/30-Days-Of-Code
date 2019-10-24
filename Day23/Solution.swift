// Start of Node class
class Node {
  var data: Int
  var left: Node?
  var right: Node?
  
  init(d : Int) {
    data  = d
  }
} // End of Node class

// Start of Tree class
class Tree {
  func insert(root: Node?, data: Int) -> Node? {
    if root == nil {
      return Node(d: data)
    }
    
    if data <= (root?.data)! {
      root?.left = insert(root: root?.left, data: data)
    } else {
      root?.right = insert(root: root?.right, data: data)
    }
    
    return root
  }
  
  func levelOrder(root: Node?) -> Void {
    // Complete the function
    var queue = [Node]()
    queue.append(root!)
    
    while queue.count != 0 {
      let currNode = queue.removeFirst()
      
      print("\(currNode.data) ", terminator: "")
      
      if currNode.left != nil {
        queue.append(currNode.left!)
      }
      
      if currNode.right != nil {
        queue.append(currNode.right!)
      }
    }
  } // End of levelOrder function
  
  
} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
  root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)

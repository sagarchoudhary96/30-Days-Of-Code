func removeDuplicates(head: Node?) -> Node? {
    var current = head
    while current?.next != nil {
        if current?.data == current?.next?.data {
            current?.next = current?.next?.next
        } else {
            current = current?.next
        }
    }
    return head
} // End of function removeDuplicates

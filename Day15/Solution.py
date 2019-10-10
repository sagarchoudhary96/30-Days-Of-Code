def insert(self,head,data): 
    if head is None:
        head = Node(data)
    elif head.next is None:
        head.next = Node(data)
    else: 
        self.insert(head.next, data)
    return head

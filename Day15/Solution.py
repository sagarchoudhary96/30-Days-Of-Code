def insert(self,head,data): 
        new_node = Node(data)
        if (head == None):
            head = new_node
        else:
            temp = head
            while (temp.next!=None):
                temp = temp.next
            temp.next = new_node
        return head

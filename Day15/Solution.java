public static  Node insert(Node head,int data)
	{
  	//Complete this method
        Node n = new Node(data);
        Node temp=head;
        if(head==null)
           return n;
        else{
            while(temp.next !=null)
                temp = temp.next;
        }
        temp.next=n;
        return head;
	}

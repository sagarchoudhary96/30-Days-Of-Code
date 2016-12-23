public static Node removeDuplicates(Node head) {
      //Write your code here
        Node current = head;

      while(current.next!= null){

          if (current.data == current.next.data){
            current.next = current.next.next;
          }
          else
              current = current.next;

      }

      return head;

    }

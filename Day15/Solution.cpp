Node* insert(Node *head,int data)
      {
         Node* new_node;
          new_node = new Node(data);
          if (head == NULL){
              head = new_node;
          }
          else {
              Node* temp;
              temp = head;
              while (temp->next!=NULL){
                  temp = temp->next;
              }
              temp->next = new_node;
          }
          
          return head;
      }

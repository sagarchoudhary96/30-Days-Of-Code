Node* insert(Node *head,int data)
{
    //Complete this function


    Node *ptr, *temp = head;

          ptr = (struct ptr *) malloc (sizeof(struct Node));

           ptr -> data = data;
           ptr -> next = NULL;

          if(temp == NULL){

             head = ptr;
          }

          else{

              while(temp -> next != NULL){

                  temp = temp -> next;
              }

              temp -> next = ptr;
          }

          return head;
}

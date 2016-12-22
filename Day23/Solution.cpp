void levelOrder(Node * root){
      //Write your code here
        if (root == NULL)
            return;
        queue<Node*> q;
        q.push(root);
        while(!q.empty()){
            Node* current = q.front();
            cout<< current->data << " ";
            if(current->left != NULL)
                q.push(current->left);

            if(current->right !=NULL)
                q.push(current->right);

            q.pop();
        }
	}

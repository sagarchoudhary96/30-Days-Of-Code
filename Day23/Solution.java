static void levelOrder(Node root){
      //Write your code here
        if(root == null)
            return;
        Queue<Node> q = new LinkedList<Node>();
        q.add(root);
        while(q.peek() != null){
            Node current = q.peek();
             System.out.print(current.data + " ");
            if (current.left != null)
                q.add(current.left);
            if (current.right != null)
                q.add(current.right);

            q.remove();

        }
    }

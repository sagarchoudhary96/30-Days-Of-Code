int getHeight(Node* root){ 
    if(root== NULL){
        return -1;
    }
    else{
        int  a = getHeight(root->left);
        int b = getHeight(root->right);
        if(a>b)
            return 1+a;
        else
            return 1+b;
    } 
}

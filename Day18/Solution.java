    // declarations
    LinkedList s = new LinkedList();
    LinkedList q = new LinkedList();

    // push Character
    public void pushCharacter(char ch){
        s.add(ch);
    }

    // enqueue charactor
    public void enqueueCharacter(char ch){
        q.add(ch);
    }

    // pop Character
    public char popCharacter(){
        return (char) s.removeLast();
    }

    // dequeue Character
    public char dequeueCharacter(){
        return (char) q.removeFirst();
    }

class Solution {
    stack<char> s;
    queue<char> q;
    public:
        // push Character
        void pushCharacter(char ch){
            s.push(ch);
        }

        // enqueue charactor
        void enqueueCharacter(char ch){
            q.push(ch);
        }

        // pop Character
        char popCharacter(){
            char c = s.top();
            s.pop();
            return c;
        }

        // dequeue Character
        char dequeueCharacter(){
            char c = q.front();
            q.pop();
            return c;
            
        }
};

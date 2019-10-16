from collections import deque

class Solution:
    def __init__(self):
        self.stack = deque()
        self.queue = deque()
    
    def pushCharacter(self,char):
        self.stack.append(char)
    
    def popCharacter(self):
        return self.stack.pop()
    
    def enqueueCharacter(self,char):
        self.queue.append(char)
    
    def dequeueCharacter(self):
        return self.queue.popleft();

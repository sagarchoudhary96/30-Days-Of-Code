from collections import deque
class Solution:
    def __init__(self):
        self.st = []
        self.que = deque()
        
    def pushCharacter(self, num):
        self.st.append(num)
        
    def popCharacter(self):
        return self.st.pop()
        
    def enqueueCharacter(self, num):
        self.que.append(num)
        
    def dequeueCharacter(self):
        return self.que.popleft()

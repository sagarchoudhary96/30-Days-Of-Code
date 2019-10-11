class Difference:
	def __init__(self, a):
		self.elements=a
		self.maximumDifference = 0
     
	def computeDifference(self):
        self.maximumDifference=max(a)-min(a)

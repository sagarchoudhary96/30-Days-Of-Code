	self.maximumDifference = 0
     
    def computeDifference(self):
        for a in self.__elements:
            for b in self.__elements:
                if abs(a-b) > self.maximumDifference:
                    self.maximumDifference = abs(a-b)

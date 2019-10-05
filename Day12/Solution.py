class Student(Person):
    def __init__(self, fName, lName, sId, scores):
        super().__init__(fName, lName, sId)
        self.scores = scores

    def calculate(self):
        avg = 0.0
        for score in self.scores:
            avg += score

        avg = avg/len(self.scores)
        if avg < 40:
            return 'T'
        elif avg < 55:
            return 'D'
        elif avg < 70:
            return 'P'
        elif avg < 80:
            return 'A'
        elif avg < 90:
            return 'E'
        else:
            return 'O'

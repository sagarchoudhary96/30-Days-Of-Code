class Person:
    def __init__(self,initialAge):
        # Add some more code to run some checks on initialAge
        if(initialAge>0):
            age = initialAge
        else:
            print "Age is not valid, setting age to 0."
            age = 0

    def amIOld(self):
        # Do some computations in here and print out the correct statement to the console
        if(age<13):
            message = "You are young."
        elif(age>=13 and age<18):
            message = "You are a teenager."
        else:
            message = "You are old."

        print message

    def yearPasses(self):
        # Increment the age of the person in here
         age = age + 1

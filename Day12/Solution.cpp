class Student :  public Person{
	private:
		vector<int> testScores;
	public:

        Student(string firstName,string lastName,int id,vector<int> scores): Person(firstName, lastName, id) {

            this->testScores = scores;
        }

        char calculate(){
            double avg = 0.0;
            for(int i=0;i<testScores.size();i++)
                avg=avg + testScores[i];
            avg=avg/testScores.size();
            if(avg<40)
                return 'T';
            else if(avg<55)
                return 'D';
                else if (avg<70)
                        return 'P';
                    else if(avg<80)
                        return 'A';
                        else if(avg<90)
                            return 'E';
                            else
                                return 'O';
        }
};

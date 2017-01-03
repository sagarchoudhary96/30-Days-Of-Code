// Declare second integer, double, and String variables.
   int j;
   double e;
   string t;

   // Read and save an integer, double, and String to your variables.
   cin >> j;
   cin >> e;
   cin.get();
   getline(cin, t);
   // Print the sum of both integer variables on a new line.
   cout<< i+j << endl;
   // Print the sum of the double variables on a new line.
   d = d+e;
   cout<< std::fixed <<std::setprecision(1)<< d << endl;
   // Concatenate and print the String variables on a new line
   // The 's' variable above should be printed first.
  cout << s << t;

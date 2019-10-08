let n = Int(readLine()!)!

if (n%2 == 1) {
    print("Weird")
} else {
    
    if n>20 {
        print("Not Weird")
    } else {
        if n>=6 {
            print("Weird")
        } else {
            print("Not Weird")
        }
    }
} 

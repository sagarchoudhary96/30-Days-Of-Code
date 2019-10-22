use std::io;

fn main() {
    let mut input = String::new();
    match io::stdin().read_line(&mut input){
        Ok(_) => {
            match input.trim().parse::<i32>() {
                Ok(number) => {
                    println!("{0}", factorial(number));
                }
                Err(error) => {
                    panic!("{:?}", error);
                }
            }
        },
        Err(error) => {
            panic!("{:?}", error);
        }
    }
}

fn factorial(n: i32) -> i32{
    if n == 1 {
        return 1;
    }
    n * factorial(n-1)
}
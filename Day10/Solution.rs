use std::io;

fn main() {
    let mut input = String::new();
    match io::stdin().read_line(&mut input){
        Ok(_) => {
            match input.trim().parse::<i32>() {
                Ok(number) => {
                    println!("{0}", max_consecutive_ones(number));
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

fn max_consecutive_ones(mut n : i32) -> i32{
    let mut max = 0;
    let mut ones = 0;
    while n > 0 {
        ones = (ones + 1) * (n%2);
        if max < ones {
            max = ones;
        }
        n /= 2;

    }
    max
}
use std::io;

fn main() {
    let mut input = String::new();
    let mut result = Vec::new();
    io::stdin().read_line(&mut input).expect("Not a valid string");
    let number_of_tests = input.trim_end().parse::<u32>().expect("Not a valid integer");
    for _ in 0..number_of_tests {
        input.clear();
        io::stdin().read_line(&mut input).expect("Not a valid string");
        let num = input.trim_end().parse::<u32>().expect("Not a valid integer");
        result.push(is_prime(num));
    }
    result.iter().for_each(|&res| println!("{}", if res {"Prime"} else {"Not prime"}));
}

//based on 6k ± 1 optimization
fn is_prime(n: u32) -> bool {
    if n <= 3 {
        return n > 1;
    } else if (n%2 == 0) || (n%3 == 0) {
        return false;
    }
    let mut i = 5;
    while i*i <= n {
        if (n%i == 0) || (n%(i+2) == 0) {
            return false;
        }
        i = i + 6;
    }
    true
}

use std::io;

fn main() {
    let mut result = Vec::new();
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Not a valid string");
    let number_of_tests = input.trim_end().parse::<u32>().expect("Not a valid integer");
    for _ in 0..number_of_tests {
        input.clear();
        io::stdin().read_line(&mut input).expect("Not a valid string");
        let test_input: Vec<u32> = input.split_whitespace()
                                        .filter_map(|i| i.parse().ok())
                                        .collect();
        result.push( test(test_input[0], test_input[1]) );
    }
    result.iter().for_each(|num| println!("{}", num));
}

fn test(n: u32, k: u32) -> u32 {
    let mut max = 0;
    for i in 1..n+1 {
        for j in i+1..n+1 {
            let res = i&j;
            if res > max && res < k {
                max = res;
            }
        }
    }
    max
}

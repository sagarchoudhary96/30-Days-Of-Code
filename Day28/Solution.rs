use std::io;
use regex::Regex;

fn main() {
    let pattern = r".+@gmail\.com";
    let re = Regex::new(pattern).unwrap();
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Not a valid string");
    let n = input.trim_end().parse::<u32>().expect("Not a valid integer");
    for _ in 0..n {
        io::stdin().read_line(&mut input).expect("Not a valid string");
    }
    let mut result = input.lines()
                          .into_iter()
                          .filter(|line| re.is_match(&line))
                          .filter_map(|line| line.split_whitespace().next())
                          .collect::<Vec<&str>>();
    result.sort();
    result.iter().for_each(|name| println!("{}", name));
}

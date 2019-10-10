use std::io;

fn main() {
    let mut input_string = String::new();

    io::stdin().read_line(&mut input_string)
        .expect("Failed to read line!");

    println!("Hello, World.");
    println!("{}", input_string);
}
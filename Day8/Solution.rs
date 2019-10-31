use std::collections::HashMap;
use std::io;
use std::io::BufRead;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut phonebook = HashMap::new();
    let mut n_numbers = String::new();

    io::stdin().read_line(&mut n_numbers)?;
    let n: i32 = n_numbers.trim().parse()?;
    for _ in 0..n {
        let mut line = String::new();
        io::stdin().read_line(&mut line)?;
        let mut words = line.split_whitespace();
        let name = words.next().unwrap().to_string();
        let number = words.next().unwrap().to_string();
        phonebook.insert(name.clone(), number.clone());
    }
    for query in io::stdin().lock().lines() {
        let name = query.unwrap();
        let result = match phonebook.get(&name) {
            Some(number) => format!("{}={}", name, number),
            None => "Not found".to_string(),
        };
        println!("{}", result);
    }
    Ok(())
}

use std::io;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut input = String::new();
    io::stdin().read_line(&mut input)?;
    let n: i32 = input.parse()?;
    for i in 1..=10 {
        println!("{} x {} = {}", n, i, n * i);
    }
    Ok(())
}

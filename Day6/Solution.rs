use std::io;

fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut n_tests = String::new();
    io::stdin().read_line(&mut n_tests)?;
    let n: i32 = n_tests.trim().parse()?;
    for _ in 0..n {
        let mut line = String::new();
        io::stdin().read_line(&mut line)?;
        let even: String = line
            .trim()
            .chars()
            .enumerate()
            .filter(|(i, _)| i % 2 == 0)
            .map(|(_, ch)| ch)
            .collect();
        let odd: String = line
            .trim()
            .chars()
            .enumerate()
            .filter(|(i, _)| i % 2 != 0)
            .map(|(_, ch)| ch)
            .collect();
        println!("{} {}", even, odd);
    }
    Ok(())
}

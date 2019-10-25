use std::io;

fn main() {
  let mut input = String::new();
  let _ = io::stdin().read_line(&mut input).unwrap();
  let n = input.parse::<i32>().unwrap();
  let is_weird = if n % 2 == 1 {
    true
  } else {
    match n {
      2..=5 => false,
      6..=20 => true,
      _ => false,
    }
  };
  if is_weird {
    println!("Weird");
  } else {
    println!("Not Weird");
  }
}

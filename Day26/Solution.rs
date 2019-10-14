use std::io;

fn main() {
    let returned = parse_input();
    let expected = parse_input();
    println!(
        "{}",
        calculate_fine(
            returned[0] - expected[0],
            returned[1] - expected[1],
            returned[2] - expected[2]
        )
    );
}

fn parse_input() -> Vec<i32> {
    let mut input = String::new();
    io::stdin().read_line(&mut input).expect("Not a valid string");
    input.split_whitespace()
         .filter_map(|i| i.parse().ok())
         .collect()
}

fn calculate_fine(day_diff: i32, month_diff: i32, year_diff: i32) -> i32 {
    let mut result = 0;
    if year_diff > 0 {
        result = 10_000;
    } else if year_diff == 0 {
        if month_diff > 0 {
            result = 500 * month_diff;
        } else if month_diff == 0 && day_diff > 0 {
            result = 15 * day_diff;
        }
    }
    result
}

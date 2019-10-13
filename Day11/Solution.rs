use std::io;

fn main() {
    let mut array = [[0;6];6];
    for i in &mut array {
        let mut input_row = String::new();
        match io::stdin().read_line(&mut input_row){
            Ok(_) => {
                for (j, value) in input_row.trim().split(' ').enumerate() {
                    match value.parse::<i32>() {
                        Ok(number) => {
                            i[j] = number;
                        },
                        Err(error) => {
                            panic!("{:?}", error);
                        }
                    }
                }
            },
            Err(error) => {
                panic!("{:?}", error);
            }
        }
    }
    
    println!("{0}", max_hourglass_sum(&array));
}

fn max_hourglass_sum(a: &[[i32; 6]; 6]) -> i32 {
    let mut max = -63;
    for i in 1..5 {
        for j in 1..5 {
            let sum = a[i][j] + a[i-1][j] + a[i-1][j-1] + a[i-1][j+1] + a[i+1][j] + a[i+1][j-1] + a[i+1][j+1];
            if sum > max {
                max = sum;
            }
        }
    }
    return max;
}

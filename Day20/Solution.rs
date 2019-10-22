use std::io;

fn main() {
    let mut input_size = String::new();
    let n;
    match io::stdin().read_line(&mut input_size){
        Ok(_) => {
            match input_size.trim().parse::<usize>() {
                Ok(number) => {
                    n = number;
                }
                Err(error) => {
                    panic!("{:?}", error);
                }
            }
        },
        Err(error) => {
            panic!("{:?}", error);
        }
    }

    let mut input_array = String::new();
    let mut a = Vec::new();
    match io::stdin().read_line(&mut input_array){
        Ok(_) => {
            for value in input_array.trim().split(' ') {
                match value.parse::<i32>() {
                    Ok(number) => {
                        a.push(number);
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

    println!("Array is sorted in {0} swaps.", bubble_sort(n, &mut a));
    println!("First Element: {0}", a[0]);
    println!("Last Element: {0}", a[n-1]);
}

fn bubble_sort(n : usize, a : &mut Vec<i32>) -> u32{

    let mut swaps = 0;

    for _i in 0..n {
        let mut single_traversal_swaps = 0;
        for j in 0..n-1 {
            if a[j] > a[j+1] {
                a.swap(j, j+1);
                single_traversal_swaps += 1;
            }
        }

        if single_traversal_swaps == 0 {
            break;
        }

        swaps += single_traversal_swaps;
    }

    swaps
}
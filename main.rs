fn pi(iterations: i64) -> f64 {
    let mut result = 0.;
    let mut sign = 1;
    for n in 0..=iterations {
        result += sign as f64 * (1. / (2. * n as f64 + 1.));
        sign *= -1;
    }
    result * 4.
}

fn main() {
    println!("{}\n", pi(100000000));
}

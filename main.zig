const print = @import("std").debug.print;
fn pi(iterations: u64) f64 {
    var result: f64 = 0.0;
    var sign: f64 = 1.0;
    for (0..iterations) |n| {
        result += sign * (1.0 / (2.0 * @as(f64, @floatFromInt(n)) + 1));
        sign *= -1;
    }
    return result * 4;
}
pub fn main() void {
    print("{}\n", .{pi(100000000)});
}

const std = @import("std");

fn fib(n: u32) u32 {
    if (n < 2) {
        return n;
    } else {
        return fib(n - 2) + fib(n - 1);
    }
}

pub fn main() !void {
    std.debug.print("{}\n", .{fib(10)});
}

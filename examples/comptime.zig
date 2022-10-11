const std = @import("std");

fn fibonacci(x: u32) u32 {
    if (x < 2) return x;
    return fibonacci(x - 1) + fibonacci(x - 2);
}

test "compile-time evaluation" {
    var array: [fibonacci(10)]i32 = undefined;
    comptime std.debug.assert(array.len == 55);
}

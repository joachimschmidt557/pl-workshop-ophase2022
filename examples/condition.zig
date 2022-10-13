const std = @import("std");

pub fn main() !void {
    const x = 123;

    if (x > 42) {
        std.debug.print("Large number\n", .{});
    } else if (x < 0) {
        std.debug.print("Negative number\n", .{});
    } else {
        std.debug.print("Small number\n", .{});
    }
}

const std = @import("std");

pub fn main() !void {
    const a = [_]u32{ 1, 2, 3, 4 };
    var sum: u32 = 0;

    for (a) |x| {
        sum += x;
    }

    std.debug.print("{}\n", .{sum});
}

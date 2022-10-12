const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    var list = std.ArrayList(u32).init(gpa.allocator());
    defer list.deinit();

    try list.append(1);
}

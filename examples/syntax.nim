func sum(a: seq[int]): int =
  for x in a:
    result += x

let numbers = @[1, 2, 3, 4]
echo sum(numbers)

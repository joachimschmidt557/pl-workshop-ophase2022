template createFunction(name: untyped, body: untyped) =
  proc name(): void =
    body

createFunction(answer):
  echo "The answer is 42"

createFunction(test):
  echo "Test is ok!"

test()

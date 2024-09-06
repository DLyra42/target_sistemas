def is_fibonacci(n):
  a, b = 0, 1
  while b < n:
    a, b = b, a + b
  return b == n 

num = int(input("Enter a number: "))

if is_fibonacci(num):
  print(f"{num} is a Fibonacci number.")
else:
  print(f"{num} is not a Fibonacci number.")

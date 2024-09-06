def is_fibonacci(n):
  """
  Checks if a given number is part of the Fibonacci sequence.

  Args:
    n: The number to check.

  Returns:
    True if the number is in the Fibonacci sequence, False otherwise.
  """

  a, b = 0, 1
  while b < n:
    a, b = b, a + b  # Calculate the next Fibonacci number

  return b == n  # Check if the input matches the last calculated Fibonacci number

# Get input from the user
num = int(input("Enter a number: "))

# Check if the number is in the Fibonacci sequence
if is_fibonacci(num):
  print(f"{num} is a Fibonacci number.")
else:
  print(f"{num} is not a Fibonacci number.")
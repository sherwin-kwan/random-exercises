import math

def is_prime(num):
  root = math.sqrt(num)
  if num < 2:
    return False
  if num == 2:
    return True
  for i in range(2, math.ceil(root) + 1):
    if num % i == 0:
      return False
  return True # Indicates a prime number

def find_prime_factor(num):
  for i in range(2, num):
    if num % i == 0 and is_prime(num / i):
      return num / i
  return -1 # The number is itself prime

# for i in range(1, 21):
#   print(is_prime(i))

print(find_prime_factor(600851475143))
import math

def find_largest_palindrome():
  for i in range(999, 100, -1):
    num = int(str(i) + str(i)[::-1])
    for j in range(999, math.floor(math.sqrt(num)), -1):
      if num % j == 0:
        return num

print(find_largest_palindrome())
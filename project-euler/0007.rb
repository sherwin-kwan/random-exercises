def is_prime(num)
  # Special cases
  return false if num.class != Integer || num < 2
  return true if num == 2
  (2..Math.sqrt(num)).each do |try|
    return false if num % try == 0
  end
  return true
end

def find_nth_prime(target)
  # Start counting at 3 with 1 prime in order to avoid special cases. All primes henceforth are odd.
  counter = 1
  (3..999999).step(2).each do |num|
    counter += 1 if is_prime(num)
    return num if counter == target
  end
end

timestamp1 = Time.now
puts find_nth_prime(10001)
timestamp2 = Time.now
puts "Completed in #{timestamp2 - timestamp1} seconds"
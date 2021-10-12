def fibonacci_generator(max)
  output = [0, 2]
  loop do 
    # Because the next even number in the Fibonacci sequence after X and Y is X + 4Y
    next_val = output[-1] * 4 + output[-2]
    break if next_val > max
    output.push(next_val)
  end
  return output
end

puts fibonacci_generator(4000000).inject(&:+)
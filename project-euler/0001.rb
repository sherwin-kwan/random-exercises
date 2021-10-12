def sum_of_multiples(max)
  return (1...max).filter{|num| num % 3 == 0 || num % 5 == 0}.inject(&:+)
end

puts sum_of_multiples(1000)
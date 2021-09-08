# Doing the classic fizzbuzz problem just to get started

def fizzbuzz(min, max, fizz_divisor, buzz_divisor)
  (min..max).each do |num|
    output = ""
    if num % fizz_divisor == 0
      output += "Fizz"
    end
    if num % buzz_divisor == 0
      output += "Buzz"
    end
    puts output.empty? ? num : output
  end
end

fizzbuzz(1, 100, 3, 5)
# fizzbuzz
# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Example:

=begin
Input: starting number, ending number
Output: print all numbers between two numbers with fizz or buzz.. string?
Rules: if num is divisible by 3, fizz, if num is div by 5, buzz, if by both, fizzbuzz
Problem: iterate over range of nums using map, transform only values divisible by 3 or 5, return transformed array joined by comma and a space. make sure to convert nums to string (not necesary if use join method)

DS: range of nums in array, string

Algo:
define a method that takes two params, n1 and n2
  call puts on whole thing- convert range to array, call map on it
    - in block, see if num is divisible by 3
      if also divisible by 5, return 'FizzBuzz'
      otherwise, return 'Fizz'
    - if divisible by 5, return Buzz
    - otherwise return the num
  - chain join method call on to this, separating els with comma and a space
=end

def fizzbuzz(n1, n2)
  str = (n1..n2).to_a.map do |num|
    if num % 3 == 0
      num % 5 == 0 ? "FizzBuzz" : "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num
    end
  end.join(', ')
  puts str
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
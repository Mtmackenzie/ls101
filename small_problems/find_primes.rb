require 'pry'
=begin
Input: two nums, first_num and last_num
Output: array of all prime numbers between given numbers
Rules: must include given numbers if they are prime
Problem: consider each number within a range and return it a new array if it is prime (only divisible by 1 and itself)

DS: arrays

Algo:
def method is_prime? 1 param, num
  - find out if divisible by anything underneath it, starting with 2
  - iterate over each number from 2 to num - 1 (divisor)
    - return false if the n % divisor == 0
  - return true

define method find_primes, 2 params: first_num and last_num
  - iterate over each number and determine if it's prime
    - select for numbers that are prime - is_prime?
  - return prime numbers in a new array
=end

def is_prime?(current_number)
  2.upto(current_number - 1) do |n|
    binding.pry
    return false if current_number % n == 0
  end
  true
end

def find_primes(first_num, last_num)
  (first_num..last_num).to_a.select do |num|
    is_prime?(num)
  end
end

p find_primes(3, 10) #== [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
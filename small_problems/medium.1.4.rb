# 1000 Lights
# You have a bank of switches before you, numbered from 1 to n. Each switch is 
# connected to exactly one light that is initially off. You walk down the row of 
# switches and toggle every one of them. You go back to the beginning, and on 
# this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, 
# you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
# You repeat this process and keep going until you have been through n repetitions.

# toggle only multiples of that round #

# Write a method that takes one argument, the total number of switches, and 
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on     3 turned off
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

# input: one argument of n lights, output: return array of lights that are left on.
# two arrays: on and off. start in off array (range).
# move multiples of that round number to other side (% by that number == 0)
# original array, 1...n, n.times do, for each on/on array, slice and add to the other array. Return on array.

# def initialize_lights(number_of_lights)
#   # n_array = (1..number_of_lights).to_a
#   off_array = (1..number_of_lights).to_a
#   on_array = []
#   counter = 1
#   loop do
#     p toggle_on = off_array.map { |n| off_array.slice!(off_array.index(n)) if n % 2 == 0}
#     p toggle_off = on_array.map { |n| on_array.slice!(on_array.index(n)) if n % 2 == 0}
#     off_array += toggle_off if toggle_off != nil
#     on_array += toggle_on if toggle_on != nil
#     counter += 1
#     break if counter > number_of_lights
#   end
#   on_array
# end

# p initialize_lights(5)

# DEFINE method with one argument
#   INITIALIZE lights hash (keys numbers 1...number), values all set to off)
#   INITIALIZE counter, set to __
#   INVOKE loop do
#     if divisble by counter, change hash
#       if hash on, change to off
#       else change to on
#     end
#     counter += 1
#     break if counter > n
#   end
#   select values of hash that == on
# end

# def initialize_lights(num)
#   lights_hash = Hash.new
#   (1..num).each { |n| lights_hash[n] = 'off'}
#   counter = 1
  
#   loop do
#     lights_hash.map do |key, value|
#       if key % counter == 0
#         if lights_hash[key] == 'off'
#           lights_hash[key] = 'on'
#         elsif lights_hash[key] == 'on'
#           lights_hash[key] = 'off'
#         end
#       end
#     end
#     counter += 1
#     break if counter > num
#   end
  
#   lights_hash.select { |key, value| key if value == 'on'}.keys.to_a
# end

# p initialize_lights(10000)
 
# counter = 1
# loop do
#   p [1, 2, 3, 4, 5, 6].select { |n| n if n % counter == 0}
#   counter += 1
#   break if counter == 6
# end
    
# You have a bank of switches before you, numbered from 1 to n. Each switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:

# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
# The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

=begin
Input: n integer (also amount of lights there are)
Output: array with lights left on after n repetitions
Rules: 
count number of times num is divisible by number before it. if odd, then it is on

DS: range, array?

Algo:
define method toggle_lights with param n
init lv results = empty array
counter = 0
toggle_counter = 0

# outer loop do  all lights, decreasing n until n == 0
  loop do       # each light
    break if counter == n
    toggle_counter += 1 if n % counter == 0
    
    
    counter += 1
  end
  
  results << n if toggle_counter.odd?
  n -= 1
end

results
=end


def toggle_lights(n)
  results = []
  counter = 1
  toggle_counter = 0
  
  loop do  # decreasing n
    
    loop do  # count number of times n is divisible by a number below it
      break if counter == n
      toggle_counter += 1 if n % counter == 0
      counter += 1
    end
    
    results.unshift(n) if toggle_counter.even?
    toggle_counter = 0
    counter = 1
    n -= 1
    break if n == 0
  end
  
  results
end

p toggle_lights(5) #== [1, 4]
p toggle_lights(10) #== [1, 4, 9]
p toggle_lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

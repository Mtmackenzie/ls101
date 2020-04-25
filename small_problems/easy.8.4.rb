# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Examples:

=begin
Input: string
Output: all substrings of string
Rules: returned in order of starting letter's index position in argument string, then shortest to longest
Problem: find each substring at incrementing index by iterating over string and creating a current_substring lv to hold the current substring, add each substring to results

DS: string, array

Algo:
use previous method to find substrings

define a method that takes string as param, str
  - iterate over index of str, using other method to find all substrings from that index onward
  -return all results
=end

def substrings_at_start(str)
  results = []
  substring = ''
  
  str.chars.each do |char|
    substring += char
    results << substring
  end
  
  results
end

def substrings(string)
  results = []
  
  string.chars.each_with_index do |char, i|
    current_string = string[i..(string.size - 1)]
    results.concat(substrings_at_start(current_string))
  end
  
  results
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
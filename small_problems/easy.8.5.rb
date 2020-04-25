# Palindromic Substrings
# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Examples:
=begin
Input: string
Output: array of substrings in same order as appear in word
Rules: same characters forward as backward, duplicates must be included. Consider all characters, case is important. single characters are not palindromes.
Problem: using substrings method, select, reverse each and check to see if equal to substring in order to determine if it's a palindrome.

DS: strings, palindrome.

Algo:
use substrings method

define method palindromes(str)
set results to return value f substrings method using str as arg
call select on results and consider each substring, substring if substring.size > 1 and substring.chars.reverse.join == substring
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

def palindromes(str)
  results = substrings(str)
  results.select {|substring| substring if substring.size > 1 && substring.chars.reverse == substring.chars}
end




p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
# Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.

# You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

# Examples
=begin
Input: string
Output: array of strings containing word and its size in a string
Rules:
Problem: break up the string to be able to count the length of each word and return both the word and length together in their own strings inside of an array

DS:

Algo:
- break up the string
- counting the length of each string and adding that number to the end of the string separated by a space (map) (string interpolation - convert int to a str
=end

def word_lengths(str)
  ary = str.split(' ')
  ary.map {|word| word + " #{word.size.to_s}"}
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
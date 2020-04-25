# Write a program that will ask a user for an input of a word or multiple words 
# and give back the number of characters. Spaces should not be counted as a character.

# input:

# Please write word or multiple words: walk
# output:

# There are 4 characters in "walk".
# input:

# Please write word or multiple words: walk, don't run
# output:

# There are 13 characters in "walk, don't run".

def count(string)
  new_string = string.gsub(/[ ]/, '')
  new_string.size
end

def output(string)
  x = count(string)
  string = '"' + string + '"'
  puts "There are #{x} characters in #{string}."
end

def user_input
  puts "Please write word or multiple words:"
  string = gets.chomp
end

def count_characters
  string = user_input
  count(string)
  output(string)
end

count_characters

# Clean up the words
# Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

# Examples:

=begin
input: string, output: string
rules: only letters and spaces, no more than one space in a row. spaces replace non-alphabetic characters.

DS: string, array

Ps:
set range of alphabet characters
break array into string of characters
iterate over each character using index
if string of characters != alphabet range or ' '
reassign with ' ' (using index)
if char == ' ' and char[i + 1] == ' '
char = ''
join no spaces



=end
VALID_CHARS = ('a'..'z').to_a


def cleanup(string)
  
  new_array = []
  
  string.chars.each do |char|
    if VALID_CHARS.include?(char)
      new_array << char
    else
      new_array << ' ' unless new_array[-1] == ' '
    end
      
  end
  new_array.join('')
end



p cleanup("---what's my +*& line?") #== ' what s my line '
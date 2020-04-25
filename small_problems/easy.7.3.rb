# Capitalize Words
# Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Examples

=begin
Input: string
Output: new string, capitalized unless in quotation marks
Rules: return words in quotation marks as is

DS: str, array (split)

Algo:
define method param str
str.split.map {|word| word.capitalize|.join(" ")

inside block, |word| word[0].upcase unless word[0] = '"'
word.first
=end

# def word_cap(str)
#   str.split.map {|word| word.capitalize}.join(" ")
# end

def word_cap(str)
  str.split.map do |word| 
    if word.chars.first == '"' 
      word
    else
      word.chars.map do |letter| 
        if letter == word.chars.first
          letter.upcase
        else
          letter.downcase
        end
      end.join
    end
  end.join(" ")
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
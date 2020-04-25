# Spin Me Around In Circles
# You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  new_string = ''
  str.split.each do |word|
    new_string << word.reverse! + ' '
  end
  new_string
end

string = "hello world"

p spin_me(string) # "olleh dlrow"

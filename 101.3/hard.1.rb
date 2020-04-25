sentence = "Or methods that can add an exclamation point to every single word of your sentence."

def exclamation(s)
  s.gsub!(" ", "! ")
end

puts exclamation(sentence)
input_string = "10.8.10.9"

def is_an_ip_number?(string)
  word = string.split(".").pop
  (1..254).include?(word.to_i)
end

p is_an_ip_number?(input_string)

# def contains_four_components?(string)
#   string.split(".").count == 4
# end

# def dot_separated_ip_address?(string)
# is_an_ip_number?(string) &&
#   contains_four_components?(string)
# end

# p dot_separated_ip_address?(input_string)
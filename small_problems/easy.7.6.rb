# Staggered Caps (Part 2)
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

# Example:


def staggered_case(str)
  uppercase = true
  # results = ''
  letters = ('a'..'z').to_a
  str.chars.map do |el|
    if letters.include?(el.downcase) && uppercase
      uppercase = !uppercase
      el.upcase
      
    elsif letters.include?(el.downcase)
      uppercase = !uppercase
      el.downcase
      
    else
      el
    end
  end.join
      
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
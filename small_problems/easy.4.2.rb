# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number, 
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century.

# input: year (integer), output: string with suffix
# edge cases: years that end in a zero.
# data structure: integers and strings
# algorithm: year = integer, find century: if integer/10 == 0, 
# store century_numbers = integer.slice [integer.size - 2, integer.size - 2], turn to string
# if century_numbers[-1] == 1, + st, if == 2, + nd, if == 3, rd, if >= 4, ==th  - append to string

def number_suffix(number_string)
  if number_string.start_with?('11', '12', '13')
    return number_string + 'th'
  else
    case number_string[-1]
    when '1'
      number_string + 'st'
    when '2'
      number_string + 'nd'
    when '3'
      number_string + 'rd'
    else
      number_string + 'th'
    end
  end
end

def shorten_year(yr)
  size = yr.to_s.size
  yr.to_s[0, size - 2].to_i
end

def century(year)
  if year % 10 == 0
    century = shorten_year(year).to_s 
  else
    century = (shorten_year(year) + 1).to_s
  end
  number_suffix(century)
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

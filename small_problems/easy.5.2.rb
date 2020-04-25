# After Midnight (Part 1)
# The time of day can be represented as the number of minutes before or after midnight. If the number of minutes is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Examples:
=begin
input:integer
output:string with hours, minutes

rules: disregard time zones, etc.
integer can be positive or negative
uses 24 hour system
could be more than 24 hours of minutes?
1 hour = 60 minutes

DS:integer, string

Algo:
initialized variables with hours, minutes set to '00'
hours[-1] =  integer / 60 to string
minutes[-1] = integer % 60 to string
concatenate hours: minutes with colon in between
=end

# def time_of_day(integer)
#   hours = '00'
#   minutes = '00'
#   if integer > 0
#     if (integer / 60) > 24
#       hours_string = ((integer/60) % 24).to_s
#     else
#       hours_string = (integer/60).to_s
#     end
#     if hours_string.size == 1
#       hours[-1] = hours_string
#     elsif hours_string.size > 1
#       hours = hours_string
#     end
#     minutes_string = (integer % 60).to_s
#     # if minutes_string.size > 1
#     #   minutes = minutes_string
#     # else
#     #   minutes[-1] = minutes_string
#     # end

#   elsif integer < 0
#     if (integer / 60) > 24
#       hours_string = ((integer/60) % 24).to_s
#     else
#       hours_string = (integer/60).to_s
#     end
#     hours = 24
#     # first divide by 60, then check to see if remainder. if remainder, subtract remainder from integer, then divide by 60 for hours. minutes are integer % 60.
#     remainder = integer % 60
#     integer = integer - remainder if remainder != 0
#     hours += (integer / 60)
#     minutes_string = remainder.to_s
#   end

#   if minutes_string.size > 1
#     minutes = minutes_string
#   else
#     minutes[-1] = minutes_string.to_s
#   end
#   "#{hours.to_s}:#{minutes}"
# end

# def find_24_division(num) #first, figure out if num is positive or negative
# # if num > 0
#   if num / 60 > 24
#     num = num / 60/ 24
#   elsif num / 60 <= 24
#     num = num / 60
#   elsif num < 24
#     0
#   end
# # elsif num < 0
  
# # elsif num == 0
#   # num
  
# end

# def positive_or_negative(num)
#   if num < 0
#     num = find_24_division(num) + 24
#   elsif num > 0
#     num = find_24_division(num)
#   elsif num == 0
#     0
#   end
# end

# p positive_or_negative(-1437)
# p positive_or_negative(35)
# p positive_or_negative(3000)
# p positive_or_negative(-4231)


# p find_24_division(3000)
# p find_24_division(-4231)
# p find_24_division(3)

# def time_of_day(n)
#   hours_string = '00'
#   hours_string[-1] = find_24_division(n).to_s
#   # if n / 60 > 0
#   #   x = find_24_division(n)
#   #   hours_string = (x / 60).to_s
#   # elsif n / 60 < 0
#   #   hours_string = (24 + (n / 60)).to_s
#   # elsif (n / 60) + 1 == 0
#   #   hours_string
#   # end
  
#   minutes_string = '00'
#   minutes_string = n % 60 if n != 0
  
#   "#{hours_string}:#{minutes_string}"
# end

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

p time_of_day(-125)
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
# # Disregard Daylight Savings and Standard Time and other complications.
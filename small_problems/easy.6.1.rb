# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees and returns a String that represents that angle in degrees, minutes and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

# dms(30) #== %(30°00'00")
# dms(76.73) #== %(76°43'48")
# dms(254.6) #== %(254°36'00")
# dms(93.034773) #== %(93°02'05")
# dms(0) #== %(0°00'00")
# dms(360) #== %(360°00'00") # dms(360) == %(0°00'00")

# Note: your results may differ slightly depending on how you round values, but 
# should be within a second or two of the results shown.

# # You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

# # You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

=begin
input: float, output: string. rules: use two digit numbers with leading zeros when formatting minutes and seconds. Use constant to represent degree symbol. if num greater than 360...

DS: string

algo:
define a method called dms, takes one float number parameter num
init lv angle, set to empty string
turn float num into a string, partition at the '.'
angle << num[0], also DEGREE

minutes_seconds_ary = ((num[-1].to_f * 60.0) / 10**(num[-1].size).to_f).to_s.partition('.')

  take num at index 0, append to angle plus ' symbol

angle << ((minutes_seconds_ary[-1].to_f * 60.0) / 10**(num[-1].size).round).to_s, plus seconds symbol

return angle
=end

def dms(num)
  angle_str = %()
  num_ary = num.to_s.partition('.')
  
  #degree
  
  angle_str << (num_ary[0] + DEGREE)
  
  minutes_seconds_ary = ((num_ary[-1].to_f * 60.0) / 10**(num_ary[-1].size).to_f).to_s.partition('.')
  
  #minutes
  
  if minutes_seconds_ary[0].size <= 1
    angle_str << ('0' + minutes_seconds_ary[0] + "'")
  else
    angle_str << minutes_seconds_ary[0] + "'"
  end
  
  # seconds
  
  seconds = ((minutes_seconds_ary[-1].to_f * 60)/(10**(minutes_seconds_ary[-1].size))).round.to_s
  
  if seconds.size <= 1
    angle_str << ('0' + seconds)
  else
    angle_str << seconds
  end
  
  angle_str + %("\"")
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") # dms(360) == %(0°00'00")


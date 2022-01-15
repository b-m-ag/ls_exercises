M_TO_FEET_CONVERSION = 10.7639

puts "please enter the length in meters"
length = gets.chomp.strip.to_f
puts "please enter the width in meters"
width = gets.chomp.strip.to_f

area_in_meters = (length * width).round(2)

area_in_feet = (area_in_meters * M_TO_FEET_CONVERSION).round(2)

puts "The area of the room is #{area_in_meters} square meters (#{area_in_feet} square feet)."
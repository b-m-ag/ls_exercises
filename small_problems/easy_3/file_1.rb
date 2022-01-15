num_arr = []

puts "Enter the 1st number"
num_1 = gets.chomp.strip.to_i
puts "Enter the 2nd number"
num_2 = gets.chomp.strip.to_i
puts "Enter the 3rd number"
num_3 = gets.chomp.strip.to_i
puts "Enter the 4th number"
num_4 = gets.chomp.strip.to_i
puts "Enter the 5th number"
num_5 = gets.chomp.strip.to_i
num_arr << num_1 << num_2 << num_3 << num_4 << num_5

puts "Enter the last number"
last_num = gets.chomp.strip.to_i

if num_arr.include?(last_num)
	puts "The number #{last_num} appears in #{num_arr}"
else  
	puts "The number #{last_num} doesn't appear in #{num_arr}"
end
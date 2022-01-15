YEAR = 2022

puts "What is your age?"
current_age = gets.chomp.strip.to_i
puts "At what age would you like to retire?"
desired_r_age = gets.chomp.strip.to_i

retired_year = (desired_r_age - current_age) + YEAR
years_left = desired_r_age - current_age

puts "It's #{YEAR}. You will retire in #{retired_year}"
puts "You have only #{years_left} years of work to go!"
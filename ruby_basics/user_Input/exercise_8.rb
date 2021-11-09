def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
denominator = nil

loop do
	puts "Please enter the numerator:"
	numerator = gets.chomp
	break if valid_number?(numerator) == true
	puts "Invalid input. Only integers are allowed"
end

loop do
	puts "Please enter the denominator:"
	denominator = gets.chomp
	case
	when denominator == 0
		puts "A denominator of 0 is not allowed. Try again"
	when valid_number?(denominator) == false
		puts "Invalid input. Only integers are allowed"
	when valid_number?(denominator) == true
		break
	else
		puts "Error occured. Try again"
	end
end

quotient = numerator.to_i / denominator.to_i
puts "#{numerator} divided by #{denominator} is #{quotient}"
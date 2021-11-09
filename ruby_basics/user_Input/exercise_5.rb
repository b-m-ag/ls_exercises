amount = nil

loop do
	puts "how many output lines do you want? Enter a number >=3:"
	amount = gets.chomp.to_i
	if amount < 3
		puts "Not enough lines. Try again"
	else
		amount.times {puts "Launch School is the best!"}
		break
	end
end
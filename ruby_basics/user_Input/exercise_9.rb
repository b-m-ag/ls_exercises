amount = nil

loop do
	puts "how many output lines do you want? Enter a number >=3:. Hit Q if you want to stop:"
	amount = gets.chomp
	break if amount == "Q" || amount == "q"
	if amount.to_i < 3
		puts "Not enough lines. Try again"
	else
		amount.to_i.times {puts "Launch School is the best!"}
	end
end
answer = nil

loop do
	puts "do you want me to print something? (y/n)"
	answer = gets.chomp
	case
	when answer == "y" || answer == "Y"
		puts "something"
		break
	when answer == "n" || answer == "N"
		break
	else
		puts "Invalid input try again"
	end
end
PASSWORD = "top secret"

loop do
	puts "enter password:"
	answer = gets.chomp
	if answer == PASSWORD
		puts "Welcome! You're in"
		break
	else
		puts "wrong password, try again!"
	end
end
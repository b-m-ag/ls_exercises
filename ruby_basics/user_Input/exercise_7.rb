USERNAME = "admin"
PASSWORD = "SecreT"

loop do
	puts "Please enter user name"
	entered_user = gets.chomp
	puts "Please enter password"
	entered_p = gets.chomp
	if entered_user == USERNAME && entered_p == PASSWORD
		puts "welcome #{entered_user}!"
		break
	else
		puts "Authorization failed!"
	end
end
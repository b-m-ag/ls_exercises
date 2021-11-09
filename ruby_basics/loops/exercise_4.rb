loop do
	puts 'should i stop looping?'
	answer = gets.chomp.to_s
	break if answer == 'yes'
end
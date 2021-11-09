status = ['awake', 'tired'].sample

result = 
	if status == 'awake'
		puts "be productive!"
	else
		puts "Go to sleep!"
	end

puts result
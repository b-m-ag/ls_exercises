def stringy(p_integer)
	counter = 0
	numbers = []
	loop do
		if counter.even? || counter == 0
			numbers << 1
			counter += 1
		else
			numbers << 0
			counter += 1
		end
		break if counter == p_integer
	end

	numbers.join('')

end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
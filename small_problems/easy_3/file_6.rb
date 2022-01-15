def xor?(x, y)
	if x == true && y == false
		return true
	elsif x == false && y == true
		return true
	else
		return false
	end
end

puts xor?(5.even?, 4.even?) == true
puts xor?(5.odd?, 4.odd?) == true
puts xor?(5.odd?, 4.even?) == false
puts xor?(5.even?, 4.odd?) == false
def reverse_words(string)
	words = []

	string.split.each do |w|
		w.reverse! if w.size >= 5
		words << w
	end

	words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
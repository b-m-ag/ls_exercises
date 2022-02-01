def word_sizes(str)
	h = Hash.new(0)
	str.split.each do |e|
		e.gsub!(/\W+/, '')
		h[e.size] += 1
	end
	h.sort.to_h
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}
# i -> string with one or more space separated words | o -> hash with (word size => word count)
# words consist of any string of characters without a space -> seven. = six characters
# based on last test case, regardless of string size, a hash should always be created
# MM: Separate all words so that they can be manipulated. Calculate size of each word and keep count of the sizes. Return hash with word sizes and word counts

# Example 1: i -> 'Four score and seven.' | o -> { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
# Example 2: i -> '' | o -> {}

# Create empty hash. Split string to separate values in array. 

def word_sizes(str)
	h = Hash.new(0)
	str.split.each do |e|
		h[e.size] += 1
	end
	h.sort.to_h
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}
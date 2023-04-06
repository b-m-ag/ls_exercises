# A collection of spelling blocks has two letters per block (e.g. b:o | x:k | d:q)
# Write a method that returns true if the word passed in as an argument uses both letters of any given block | Return false otherwise

# Approach: Use a collection to store the spelling blocks. Inside of the method, iterate through said collection and we check whether the given word uses both letters during each iteration. Return true if it does, false otherwise

# (1) Initialize a local constant variable assigned to the collection containing the spelling blocks
# (2) Define the method block_word? with one argument
# (3) Initialize a local variable inside said method and set it to nil. This variable will contain the boolean value for the iteration
# (4) Iterate through constant and check if a spelling block matches the argument. If any block matches, set local variable, that was initially set to nil, to true.
# (5) On last line of method, check if the local variable is truthy. If it returns a truthy value, it will return true. If it didn't find a match, it will return nil, which is falsey since it doesn't evaluate to true

SPELLING_BLOCKS = [[:B, :O], [:X, :K], [:D, :Q], [:C, :P], [:N, :A], [:G, :T], [:R, :E], [:F, :S], [:J, :W], [:H, :U], [:V, :I], [:L, :Y], [:Z, :M]]

def block_word?(word)
	is_block_word = true
	SPELLING_BLOCKS.each do |block|
		letter_1, letter_2 = block[0].to_s, block[1].to_s
		if word.include?(letter_1) && word.include?(letter_2)
			is_block_word = false
		end
	end
	is_block_word
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')
def print_story(noun, verb, adverb, adjective)
	puts "The #{noun} is #{verb} #{adverb}. How #{adjective}!"
end

puts "Enter a noun:"
user_noun = gets.chomp.strip

puts "Enter a verb:"
user_verb = gets.chomp.strip

puts "Enter an adverb:"
user_adv = gets.chomp.strip

puts "Enter an adjective:"
user_adj = gets.chomp.strip

print_story(user_noun, user_verb, user_adv, user_adj)
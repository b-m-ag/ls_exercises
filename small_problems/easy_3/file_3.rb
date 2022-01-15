# Get user word(s)
# Eliminate spaces from the string without mutating, as we will use the og at the end

def ret_input_no_spaces(words)
	words = words.delete(' ')
end

puts "Please write word or multiple words:"
input = gets.chomp.strip

new_input = ret_input_no_spaces(input)
total = new_input.length

puts "There are #{total} characters in \"#{input}\""
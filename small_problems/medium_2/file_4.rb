# Method takes a string as an argument
# Returns true if all parentheses in the string are properly balanced, false otherwise

def balanced?(string)
	unbalanced_count = 0
  unbalanced_count += 1 unless iterator(string, '(', ')')
	unbalanced_count += 1 unless iterator(string, '[', ']')
	unbalanced_count += 1 unless iterator(string, '{', '}')
	unbalanced_count += 1 unless iterator(string, '\'', '\'')
	unbalanced_count += 1 unless iterator(string, '\"', '\"')

	unbalanced_count == 0
end

def iterator(str, opening_char, closing_char)
	count = 0
	string.each_char do |char|
    count += 1 if char == opening_char
    count -= 1 if char == closing_char
    break if count < 0
  end

	count.zero?
end
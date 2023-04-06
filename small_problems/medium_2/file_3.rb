# Write a method that takes a string. It returns a hash with 3 entries:
#   1 => % of chars. that are lowercase
#   2 => % of chars. that are uppercase
#   3 => % of chars. that are neither
# You may assume that the string will always contain at least one char.

# Examples:
# letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
# letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
# letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

# Approach: The first thing I'd like to do is convert the string to a collection. This would allow me to access every character as an individual object. Then, I'd iterate through that collection and collect the amount of characters that meet the hash criteria, the categories. After I collect the amount, I have to perform simple division to obtain the percentage (remember to round to one decimal point). After I've calculated, I add the percentages to the hash and return that hash

def letter_percentages(str)
	totals = {'lowercase' => 0, 'uppercase' => 0, 'neither' => 0}
	arr = str.chars
	arr.each do |char|
		totals[type_of_char(char)] += 1
	end
	totals
	p return_percentages(str, totals)
end

def return_percentages(str, totals_hash)
	total_chars = str.length
	lowercase = calculate_percentage(total_chars, totals_hash['lowercase'])
	uppercase = calculate_percentage(total_chars, totals_hash['uppercase'])
	neither = calculate_percentage(total_chars, totals_hash['neither'])
	{ lowercase: lowercase, uppercase: uppercase, neither: neither }
end

def calculate_percentage(length, category_count)
	category_count.to_f / length.to_f * 100
end

def type_of_char(char)
	if char.match? /[a-z]/
		'lowercase'
	elsif char.match? /[A-Z]/
		'uppercase'
	else
		'neither'
	end
end

letter_percentages('abCdef 123')
letter_percentages('AbCd +Ef')
letter_percentages('123')
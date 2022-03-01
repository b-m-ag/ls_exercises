def penultimate(str)
	str.split[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# possible edge cases for retrieving middle word
# even amount of words | one word | two words

def middle(str)
	arr = str.split
	middle = arr[arr.size / 2] # returns the top half if array even
	arr.size.even? ? "Technically not the middle, but -#{middle}- is as close as we'll get" : middle
end

middle("Launch School is great for me!")
middle("Last word is not the middle one")
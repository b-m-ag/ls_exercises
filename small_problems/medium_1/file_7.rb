# Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

=begin

UNDERSTAND THE PROBLEM
Restatement:
	- Take a string, a sentence, as an input
	- This string will contain words that are numbers
	- Convert these numbers into their number form
	- Return the same string, mutate it, with step 3 done
Input: sentence string with words that are numbers
Output: same string but mutated with the number form of... the numbers
Explicit Rules: 
	- The string has to be the same one
Implicit Rules:
	- I will have to mutate the string for it to stay the same object

THEORIES/POSSIBLE METHODS?
Split sentence and simply transform, using #map, all words that are numbers into their integer form

ALGORITHM
High-level: Split sentence and transform all words that are numbers into their integer form. Use a collection to store the string form of a number with its equal number form (ex. 'one', '1'). Subsitute the first element from the collection for the second one.
Detailed:
	(1) Define a hash with the word form of a number as the key and the number form as the value
	(2) Split 

=end

def word_to_digit(sentence)
	# hash = {
	# 	'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4'
	# 	'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
	# }
	sentence.split
end

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# SOLUTION

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end
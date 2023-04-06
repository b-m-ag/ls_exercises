# You are given a text file
# This text file contains sentences ending with => . ! ?
# Find the longest sentence based on the number of words
# Any sequence of chars. that aren't spaces or punctuation are words
# After finding this sentence, print the number of words in said sentence


text = File.read('pg84.txt')
sentences = text.split(/\.|\?|!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }
largest_sentence = largest_sentence.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts "Containing #{number_of_words} words"
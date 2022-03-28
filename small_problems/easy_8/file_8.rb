def double_consonants(str)
	result = ''
  str.each_char do |char|
    /^[^aeiou\d\W]/i.match(char) == nil ? result << char : result << char << char
	end
  result
end


p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
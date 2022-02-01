def crunch(str)
	str = str.split(' ').map {|e| e.chars.chunk(&:itself).map(&:first)}
	str.map(&:join).join(' ')
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''
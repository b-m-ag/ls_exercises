def swapcase(str)
	str = str.split
	str.map do |e|
		e = e.chars
		e.map do |char|
			if char.match? /[a-z]/
				char.upcase!
			elsif char.match? /[A-Z]/
				char.downcase!
			else
				char
			end
		end
		e.join
	end.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
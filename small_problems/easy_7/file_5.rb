def staggered_case(str)
	new_str = '' 
	str.chars.each_with_index do |char, index|
		if index == 0 || index.even?
			new_str << char.upcase
		else
			new_str << char.downcase
		end
	end
	new_str
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

def reversed_staggered_case(str)
	new_str = '' 
	str.chars.each_with_index do |char, index|
		if index == 0 || index.even?
			new_str << char.downcase
		else
			new_str << char.upcase
		end
	end
	new_str
end

reversed_staggered_case('I Love Launch School!')
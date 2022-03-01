def letter_case_count(str)
	main_hash = { lowercase: 0, uppercase: 0, neither: 0}
	str.chars.each do |char|
		if char.match? /[a-z]/
			main_hash[:lowercase] += 1
		elsif char.match? /[A-Z]/
			main_hash[:uppercase] += 1
		else
			main_hash[:neither] += 1
		end
	end
	main_hash
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
	'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
	'flow', 'neon']

def anagram_outputter(arr)
	#
end

def anagram?(str1, str2)
	str1.chars.sort.to_s == str2.chars.sort.to_s
end

p anagram?("neon", "none")
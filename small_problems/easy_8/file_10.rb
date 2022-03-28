def center_of(str)
	middle = str.length / 2
	str.length.odd? ? str[middle] : str[middle - 1..middle]
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
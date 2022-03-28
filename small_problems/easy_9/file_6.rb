def word_lengths(str)
	str.split.map { |e| "#{e} #{e.length}" }
end

word_lengths("cow sheep chicken")
word_lengths("baseball hot dogs and apple pie")
word_lengths("It ain't easy, is it?")
word_lengths("Supercalifragilisticexpialidocious")
word_lengths("")
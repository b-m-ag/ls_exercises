def word_cap(str)
	str.split.map(&:capitalize).join(' ')
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

def word_cap_alt_1(string)
  words = string.downcase.split.map do |word|
    word[0].upcase + word[1..-1]
  end.join(' ')
end

p word_cap_alt_1('four score aNd SEVEN')
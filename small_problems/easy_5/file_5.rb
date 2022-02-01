def cleanup(text)
  text.gsub(/[^a-z]/, ' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
puts "What is your name?"
name = gets.chomp.strip.to_s
alt_name = name.chop.upcase

if name.include?('!')
	puts "HELLO #{alt_name}. WHY ARE WE SCREAMING?"
else
	puts "Hello #{name}."
end
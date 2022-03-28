def sequence(int)
	(1..int).to_a
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

def alt_sequence(int)
	int.negative? ? (int..-1).to_a.reverse! : (1..int).to_a
end

p alt_sequence(-5)
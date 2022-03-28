def greetings(arr, h)
	"Hello, #{arr.join(' ')}! Nice to have a #{h[:title]} #{h[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })

def alternate_greetings(arr, h)
	name, title, occupation = arr.join(' '), h[:title], h[:occupation]
	"Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

alternate_greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
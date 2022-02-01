def spin_me(str)
  str.split.each do |word| # makes array, different object
    word.reverse! # mutates values of new object
  end.join(" ") # makes new string object, which was made with new objects``
end

spin_me("hello world") # "olleh dlrow"
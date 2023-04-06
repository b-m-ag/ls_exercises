require 'pry'

def diamonds(int)
  star_arr = Array.new(int, nil)
  stars = 1

  loops = (int / 2) + 1

  loops.times do |x|
    int == 1 ? spaces = 0 : spaces = (int - stars) / 2
    star_arr[x] = star_arr[-(x+1)] = (" " * spaces) + ("*" * stars) + (" " * spaces)
    stars += 2
  end
	binding.pry

  star_arr.each do |line|
    puts line
  end
end

diamonds(3)
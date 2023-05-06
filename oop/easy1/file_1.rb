class Banner
	attr_reader :message
  def initialize(message)
		@message = message
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def horizontal_rule
		arr = []
		(message.length + 2).times { arr << "-"}
		"+#{arr.join}+"
	end

  def empty_line
		arr = []
		(message.length + 2).times { arr << " "}
		"|#{arr.join}|"
  end

  def message_line
    "| #{@message} |"
  end
end

# Complete this class so that the test cases shown below work as intended. You are free to add any methods or instance variables you need. However, do not make the implementation details public

banner = Banner.new('To boldly go where no one has gone before.')
puts banner
banner = Banner.new('')
puts banner
=begin
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
+--+
|  |
|  |
|  |
+--+
=end
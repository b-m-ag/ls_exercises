def print_in_box(string)
  width = string.size + 2
  puts <<~MSG
          +#{'-' * width}+
          |#{' ' * width}|
          | #{string} |
          |#{' ' * width}|
          +#{'-' * width}+
        MSG
end

print_in_box('To boldly go where no one has gone before')
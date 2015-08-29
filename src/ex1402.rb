# Sample code from Programing Ruby, page 634
require 'abbrev'

COMMANDS = %w{ sample send start status stop }.abbrev

while line = gets
  line = line.chomp

  case COMMANDS[line]
  when "sample":  # ...
  when "send":    # ...
  # ...
  else
    STDERR.puts "Unknown command: #{line}"
  end
end

# Sample code from Programing Ruby, page 702
require 'readline'
include Readline

require 'abbrev'

COMMANDS = %w{ exit inc dec }

ABBREV = COMMANDS.abbrev

Readline.completion_proc = proc do |string|
  ABBREV[string]
end

value = 0

loop do

  cmd = readline("wibble [#{value}]: ", true)

  break if cmd.nil?

  case cmd.strip
  when "exit"
    break
  when "inc"
    value += 1
  when "dec"
    value -= 1
  else
    puts "Invalid command #{cmd}"
  end

end

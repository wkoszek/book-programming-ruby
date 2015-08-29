# Sample code from Programing Ruby, page 716
INPUT = [ "set a = dave", "set b = hello", "get b", "get a"]
puts "% ruby code/strscan.rb"
def gets
  res = INPUT.shift
  puts res if res
  res
end
require 'strscan'

# Handle the language:
#   set <var> = <value>
#   get <var>

values = {}

loop do
  line = gets or break

  scanner = StringScanner.new(line.chomp)

  scanner.scan(/(get|set)\s+/) or fail "Missing command"
  cmd = scanner[1]

  var_name = scanner.scan(/\w+/) or fail "Missing variable"

  case cmd
  when "get"
    puts "#{var_name} => #{values[var_name].inspect}"
    
  when "set"
    scanner.skip(/\s+=\s+/) or fail "Missing '='"
    value = scanner.rest
    values[var_name] = value
  else
    fail cmd
  end
end

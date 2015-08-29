# Sample code from Programing Ruby, page 690
require 'optparse'
require 'date'

# Add Dates as a new option type
OptionParser.accept(Date, /(\d+)-(\d+)-(\d+)/) do |d, mon, day, year|
  Date.new(year.to_i, mon.to_i, day.to_i) 
end

opts = OptionParser.new
opts.on("-x")                        {|val| puts "-x seen" }
opts.on("-s", "--size VAL", Integer) {|val| puts "-s #{val}" }
opts.on("-a", "--at DATE",  Date)    {|val| puts "-a #{val}" }

my_argv = [ "--size", "1234", "-x", "-a", "12-25-2003", "fred", "wilma" ]

rest = opts.parse(*my_argv)
puts "Remainder = #{rest.join(', ')}"
 opts.program_name = 'myprog'
puts opts.to_s

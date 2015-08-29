# Sample code from Programing Ruby, page 662
require 'generator'

gen = Generator.new do |result|
  result.yield "Start"
  3.times {|i| result.yield i}
  result.yield "done"
end
while gen.next?
  print gen.next, "--"
end
 puts

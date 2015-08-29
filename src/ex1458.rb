# Sample code from Programing Ruby, page 662
require 'generator'
gen = Generator.new(1..4)
while gen.next?
  print gen.next, "--"
end
 puts

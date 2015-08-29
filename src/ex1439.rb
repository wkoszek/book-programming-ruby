# Sample code from Programing Ruby, page 651
require 'enumerator'
(1..7).each_slice(3) {|slice| print slice.inspect, " " }
puts
(1..7).each_cons(3)  {|cons|  print cons.inspect, " " }
puts

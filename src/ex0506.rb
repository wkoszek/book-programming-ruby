# Sample code from Programing Ruby, page 279
 $: << "code/ext"
require 'CDPlayer'
p = CDPlayer.new(13)
puts "Unit is #{p.unit}"
p.seek(3, 16) {|x| puts "#{x}% done" }
puts "Avg. time was #{p.seek_time} seconds"

p1 = p.dup
puts "Cloned unit = #{p1.unit}"

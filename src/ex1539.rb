# Sample code from Programing Ruby, page 708
require 'scanf'

data = "cat:7 dog:9 cow:17 walrus:31"

data.scanf("%[^:]:%d ") do |animal, value|
  puts "A #{animal.strip} has #{value*1.4}"
end

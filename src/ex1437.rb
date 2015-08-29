# Sample code from Programing Ruby, page 651
require 'enumerator'

hash = { "cow" => "bovine", "cat" => "feline", "dog" => "canine" }

key_iter = Enumerable::Enumerator.new(hash, :each_key)
puts "Max key is #{key_iter.max}"
for key in key_iter
  puts "Key is #{key}"
end

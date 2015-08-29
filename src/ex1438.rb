# Sample code from Programing Ruby, page 651
require 'enumerator'
hash = { "cow" => "bovine", "cat" => "feline", "dog" => "canine" }
key_iter = hash.enum_for(:each_key)
key_iter.min
key_iter.max

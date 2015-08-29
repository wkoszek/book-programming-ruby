# Sample code from Programing Ruby, page 662
require 'generator'
gen = SyncEnumerator.new(1..3, "a".."c")
gen.each {|num, char| print num, "(", char, ") " }

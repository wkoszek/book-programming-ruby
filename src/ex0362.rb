# Sample code from Programing Ruby, page 164
require 'profile'

words = File.read("/usr/share/dict/words")
count = words.scan(PATT= /^............\n/).size

puts "#{count} twelve-character words"

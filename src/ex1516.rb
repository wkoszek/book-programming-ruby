# Sample code from Programing Ruby, page 693
require 'pathname'

p1 = Pathname.new("/usr/bin/ruby") #!sh!
p1.file?
p1.directory?
p1.executable?
p1.size

p2 = Pathname.new("testfile")

p2.read
p2.readlines

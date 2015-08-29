# Sample code from Programing Ruby, page 693
require 'pathname'

p1 = Pathname.new("/usr/bin")
p2 = Pathname.new("ruby")
p3 = p1 + p2
p4 = p2 + p1
p3.parent
p3.parent.parent
p1.absolute?
p2.absolute?
p3.split

p5 = Pathname.new("testdir")

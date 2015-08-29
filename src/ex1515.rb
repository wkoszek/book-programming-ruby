# Sample code from Programing Ruby, page 693
require 'pathname'
p5 = Pathname.new("testdir")
p5.realpath
p5.children

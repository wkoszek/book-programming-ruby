# Sample code from Programing Ruby, page 668
require 'jcode'
str = "\342\210\202x/\342\210\202y"
str.each_char {|ch| print ch.inspect, "  "}

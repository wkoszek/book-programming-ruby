# Sample code from Programing Ruby, page 689
require 'ostruct'

os = OpenStruct.new( "f1" => "one", :f2 => "two" )
os.f3 = "cat"
os.f4 = 99
os.f1
os.f2
os.f3
os.f4

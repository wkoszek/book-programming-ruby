# Sample code from Programing Ruby, page 694
require 'pp'

Customer = Struct.new(:name, :sex, :dob, :country)

cust = Customer.new("Walter Wall", "Male", "12/25/1960", "Niue")

puts "Regular print"
p cust

puts "\nPretty print"
pp cust

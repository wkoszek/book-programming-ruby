# Sample code from Programing Ruby, page 704
require 'rexml/document'
xml = REXML::Document.new(File.open("demo.xml"))

puts "Root element: #{xml.root.name}"
puts "\nThe names of all classes"
xml.elements.each("//class") {|c| puts c.attributes["name"] }
puts "\nThe description of Fixnum"
p xml.elements["//class[@name='Fixnum']"].text

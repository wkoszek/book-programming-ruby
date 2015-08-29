# Sample code from Programing Ruby, page 118
  5.times do |i|
     File.open("temp.rb","w") do |f| 
       f.puts "module Temp"
       f.puts "  def Temp.var"
       f.puts "    #{i}"
       f.puts "  end"
       f.puts "end" 
     end
     load "temp.rb"
     puts Temp.var
   end

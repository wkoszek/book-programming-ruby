# Sample code from Programing Ruby, page 96
  File.open("ordinal").grep(/d$/) do |line|
    puts line
  end

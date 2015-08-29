# Sample code from Programing Ruby, page 710
require 'etc'
require 'set'

users = []
Etc.passwd {|u| users << u }

related_users = users.to_set.divide do |u1, u2|
  (u1.uid - u2.uid).abs <= 1
end

related_users.each do |relatives|
  relatives.each {|u| print "#{u.uid}/#{u.name} " }
  puts
end

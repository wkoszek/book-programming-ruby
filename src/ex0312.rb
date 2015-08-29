# Sample code from Programing Ruby, page 126
require 'open-uri'

open('http://www.pragmaticprogrammer.com') do |f|
  puts f.read.scan(/<img src="(.*?)"/m).uniq
end

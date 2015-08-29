# Sample code from Programing Ruby, page 707
require 'rss/1.0'
require 'open-uri'

open('http://ruby-lang.org/en/index.rdf') do |http|
  response = http.read

  result = RSS::Parser.parse(response, false)

  puts "Channel: " + result.channel.title
  result.items.each_with_index do |item, i|
    puts "#{i+1}. #{item.title}" if i < 4
  end
end

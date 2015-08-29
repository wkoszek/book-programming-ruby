# Sample code from Programing Ruby, page 240
require 'google'
require 'cgi'

key = File.read(File.join(ENV['HOME'], ".google_key")).chomp

google = Google::Search.new(key)
result = google.search('pragmatic')

printf "Estimated number of results is %d.\n", 
       result.estimatedTotalResultsCount

printf "Your query took %6f seconds.\n", result.searchTime
first = result.resultElements[0]
puts first.title
puts first.url
puts CGI.unescapeHTML(first.snippet)

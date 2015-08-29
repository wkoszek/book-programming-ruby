# Sample code from Programing Ruby, page 239
require 'soap/rpc/driver'
require 'cgi'

endpoint = 'http://api.google.com/search/beta2'
namespace = 'urn:GoogleSearch'

soap = SOAP::RPC::Driver.new(endpoint, namespace)

soap.add_method('doGoogleSearch', 'key', 'q', 'start',
                             'maxResults', 'filter', 'restrict',
                             'safeSearch', 'lr', 'ie', 'oe')

query = 'pragmatic'
key = File.read(File.join(ENV['HOME'], ".google_key")).chomp

result = soap.doGoogleSearch(key, query, 0, 1, false, nil, 
                             false, nil, nil, nil)

printf "Estimated number of results is %d.\n",
       result.estimatedTotalResultsCount

printf "Your query took %6f seconds.\n", result.searchTime
first = result.resultElements[0]
puts first.title
puts first.URL
puts CGI.unescapeHTML(first.snippet)

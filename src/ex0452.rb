# Sample code from Programing Ruby, page 239
require 'soap/wsdlDriver'
require 'cgi'

WSDL_URL = "http://api.google.com/GoogleSearch.wsdl"

soap = SOAP::WSDLDriverFactory.new(WSDL_URL).createDriver

query = 'pragmatic'
key = File.read(File.join(ENV['HOME'], ".google_key")).chomp

result = soap.doGoogleSearch(key, query, 0, 1, false, 
                             nil, false, nil, nil, nil)

printf "Estimated number of results is %d.\n", 
       result.estimatedTotalResultsCount

printf "Your query took %6f seconds.\n", result.searchTime
first = result.resultElements[0]
puts first.title
puts first.URL
puts CGI.unescapeHTML(first.snippet)

# Sample code from Programing Ruby, page 225
  $stdin=DATA
  require 'cgi'
  cgi = CGI.new
  cgi.params
  cgi.params['name']
  cgi.params['reason']
  cgi.params['name'] = [ cgi['name'].upcase ]
  cgi.params
__END__
name=Dave%20Thomas
reason=flexible
reason=transparent
reason=fun

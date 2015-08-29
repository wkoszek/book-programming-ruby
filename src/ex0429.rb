# Sample code from Programing Ruby, page 224
  $stdin=DATA
  require 'cgi'
  cgi = CGI.new
  cgi['name']
  cgi['reason']
__END__
name=Dave%20Thomas
reason=flexible
reason=transparent
reason=fun

# Sample code from Programing Ruby, page 225
  $stdin=DATA
  require 'cgi'
  cgi = CGI.new
  cgi.has_key?('name')
  cgi.has_key?('age')
__END__
name=Dave%20Thomas

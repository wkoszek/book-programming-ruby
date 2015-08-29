# Sample code from Programing Ruby, page 379
  require 'cgi'

  cgi = CGI.new("html4")

  # Fetch the value of the form field "expression"
  expr = cgi["expression"].to_s
  
  begin
    result = eval(expr)
  rescue Exception => detail
    # handle bad expressions
  end
  
  # display result back to user...

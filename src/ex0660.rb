# Sample code from Programing Ruby, page 382
  require 'cgi';

  $SAFE = 1
  
  cgi = CGI.new("html4")

  expr = cgi["expression"].to_s

  if expr =~ %r{\A[-+*/\d\seE.()]*\z}
    expr.untaint
    result = eval(expr)
    # display result back to user...
  else
    # display error message...
  end

# Sample code from Programing Ruby, page 104
string = "1"
  begin
    eval string
  rescue SyntaxError, NameError => boom
    print "String doesn't compile: " + boom
  rescue StandardError => bang
    print "Error running script: " + bang
  end

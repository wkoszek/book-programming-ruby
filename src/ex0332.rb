# Sample code from Programing Ruby, page 141
  exec("sort testfile > output.txt") if fork.nil?
  # The sort is now running in a child process
  # carry on processing in the main program
  
  # ... dum di dum ...

  # then wait for the sort to finish
  Process.wait
 File.delete('output.txt')

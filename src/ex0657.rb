# Sample code from Programing Ruby, page 380
  f=open(filename,"w")
  f.print ...   # write untrusted program into file.
  f.close
  Thread.start do
    $SAFE = 4
    load(filename, true)
  end

# Sample code from Programing Ruby, page 102
  opfile_name = "/tmp/testfile"
  socket = $stdin
  op_file = File.open(opfile_name, "w")
  begin
    # Exceptions raised by this code will
    # be caught by the following rescue clause
    while data = socket.read(512)
      op_file.write(data)
    end

  rescue SystemCallError
    $stderr.print "IO failed: " + $!
    op_file.close
    File.delete(opfile_name)
    raise
  end

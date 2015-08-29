# Sample code from Programing Ruby, page 102
  op_file = File.open(opfile_name, "w")
  while data = socket.read(512)
    op_file.write(data)
  end

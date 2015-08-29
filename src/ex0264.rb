# Sample code from Programing Ruby, page 105
  f = File.open("testfile")
  begin
    # .. process
  rescue
    # .. handle error
  ensure
    f.close unless f.nil?
  end

# Sample code from Programing Ruby, page 83
  for i in 0..3
    status = `dbmanager status id=#{i}`
    # ...
  end

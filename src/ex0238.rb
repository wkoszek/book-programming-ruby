# Sample code from Programing Ruby, page 94
  file = File.open("ordinal")
  while file.gets
    print  if ~/third/ .. ~/fifth/
  end

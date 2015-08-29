# Sample code from Programing Ruby, page 94
  file = File.open("ordinal")
  while line = file.gets
    puts(line)  if line =~ /third/ .. line =~ /fifth/
  end

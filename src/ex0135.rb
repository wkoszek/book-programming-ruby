# Sample code from Programing Ruby, page 64
  while line = gets
    puts line if line =~ /start/ .. line =~ /end/
  end

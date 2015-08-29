# Sample code from Programing Ruby, page 95
  File.foreach("ordinal") do |line|
    if (($. == 1) || line =~ /eig/) .. (($. == 3) || line =~ /nin/)
      print line
    end
  end

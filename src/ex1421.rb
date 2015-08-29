# Sample code from Programing Ruby, page 642
 def process(h,r) 
 end
      require 'csv'
      reader = CSV.open("csvfile_hdr", "r")
      header = reader.shift
      reader.each {|row| process(header, row) }

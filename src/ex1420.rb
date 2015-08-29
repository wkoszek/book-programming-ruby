# Sample code from Programing Ruby, page 642
      require 'csv'
      CSV.open("csvfile", "r") do |row|
        qty = row[0].to_i
        price = row[2].to_f
        printf "%20s: $%5.2f %s\n", row[1], qty*price, row[3] || "  ---"
      end

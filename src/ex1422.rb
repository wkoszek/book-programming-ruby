# Sample code from Programing Ruby, page 642
      require 'csv'
      CSV::Writer.generate(STDOUT, '|') do |csv|
        csv << [ 1, "line 1", 27 ]
        csv << [ 2, nil, 123 ]
        csv << [ 3, "|bar|", 32.5]
      end

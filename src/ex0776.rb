# Sample code from Programing Ruby, page 427
    callcc do |cont|
      for i in 0..4
        print "\n#{i}: "
        for j in i*5...(i+1)*5
          cont.call() if j == 7
          printf "%3d", j
        end
      end
    end
    print "\n"

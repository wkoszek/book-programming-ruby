# Sample code from Programing Ruby, page 442
      begin
         raise "The message"
      rescue Exception => e
         puts e.to_s
      end

# Sample code from Programing Ruby, page 484
        rd, wr = IO.pipe

        if fork
          wr.close
          puts "Parent got: <#{rd.read}>"
          rd.close
          Process.wait
        else
          rd.close
          puts "Sending message to parent"
          wr.write "Hi Dad"
          wr.close
        end

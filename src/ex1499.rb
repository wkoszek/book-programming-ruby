# Sample code from Programing Ruby, page 682
      require 'net/smtp'

      Net::SMTP::start('pragprog.com', 25, "pragprog.com") do |smtp|
        smtp.open_message_stream('dave@pragprog.com', # from
                                 [ 'dave' ]           # to
                                ) do |stream|
          stream.puts "Subject: Test1"
          stream.puts
          stream.puts "And so is this"
        end
      end

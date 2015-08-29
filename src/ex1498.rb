# Sample code from Programing Ruby, page 682
      require 'net/smtp'

      msg = "Subject: Test\n\nNow is the time\n"
      Net::SMTP.start('pragprog.com') do |smtp|
        smtp.send_message(msg, 'dave@pragprog.com', ['dave'])
      end

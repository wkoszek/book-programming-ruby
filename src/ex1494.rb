# Sample code from Programing Ruby, page 680
    require 'net/imap'

    imap = Net::IMAP.new('my.mailserver.com')
    imap.authenticate('LOGIN', 'dave', 'secret')
    imap.examine('INBOX')
    puts "Message count: #{ imap.responses["EXISTS"]}"
    imap.search(["TO", "dave"]).each do |message_id|
      envelope = imap.fetch(message_id, "ENVELOPE")[0].attr["ENVELOPE"]
         puts "#{envelope.from[0].name}: \t#{envelope.subject}"
    end

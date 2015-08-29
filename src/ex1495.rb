# Sample code from Programing Ruby, page 680
    require 'net/imap'
    imap = Net::IMAP.new('my.mailserver.com')
    imap.authenticate('LOGIN', 'dave', 'secret')
    imap.select('Mail/sent-mail')
    if not imap.list('Mail/', 'sent-apr03')
      imap.create('Mail/sent-apr03')
    end
    imap.search(["BEFORE", "01-May-2003", 
                 "SINCE",  "1-Apr-2003"]).each do |message_id|
      imap.copy(message_id, "Mail/sent-apr03")
      imap.store(message_id, "+FLAGS", [:Deleted])
   end
   imap.expunge

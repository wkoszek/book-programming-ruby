# Sample code from Programing Ruby, page 677
      require 'net/ftp'
      
      ftp = Net::FTP.new('ftp.netlab.co.jp')
      ftp.login
      ftp.chdir('pub/lang/ruby/contrib')
      files = ftp.list('n*')
      ftp.getbinaryfile('nif.rb-0.91.gz', 'nif.gz', 1024)
      ftp.close

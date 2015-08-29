# Sample code from Programing Ruby, page 254
arg   = "ids=#{resp.intl_orders.join(",")}"
fname = "/temp/invoices.pdf"

site = Net::HTTP.new(HOST, PORT)
site.use_ssl = true 
http_resp, = site.get2("/fulfill/receipt.cgi?" + arg,
                       'Authorization' => 'Basic ' + 
                       ["name:passwd"].pack('m').strip )

File.open(fname, "wb") {|f| f.puts(http_resp.body) }

shell = Win32API.new("shell32","ShellExecute", 
                       ['L','P','P','P','P','L'], 'L' )
shell.Call(0, "print", fname, 0,0, SW_SHOWNORMAL)

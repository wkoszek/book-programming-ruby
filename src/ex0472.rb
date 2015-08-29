# Sample code from Programing Ruby, page 255
  ie = WIN32OLE.new('InternetExplorer.Application')
  ie.visible = true
  ie.navigate("http://www.pragmaticprogrammer.com")

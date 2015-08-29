# Sample code from Programing Ruby, page 449
        File.link("testfile", "testfile.lnk")
        f = File.open("testfile.lnk")
        f.gets
        File.delete("testfile.lnk") #!sh!

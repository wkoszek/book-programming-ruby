# Sample code from Programing Ruby, page 437
        Dir.mkdir("sorteg")
        Dir.chdir("sorteg")
        system("touch -t 08071200 mon")
        system("touch -t 08081200 tues")
        system("touch -t 08091200 wed")
        system("touch -t 08101200 thurs")
        sorted = Dir["*"].collect {|f|
           [test(?M, f), f]
        }.sort.collect {|f| f[1] }

        sorted
        system("rm mon tues wed thurs")
        Dir.chdir("..")
        Dir.rmdir("sorteg")

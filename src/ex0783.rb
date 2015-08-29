# Sample code from Programing Ruby, page 430
        Dir.chdir("testdir") 
        Dir["config.?"]
        Dir.glob("config.?")
        Dir.glob("*.[a-z][a-z]")
        Dir.glob("*.[^r]*")
        Dir.glob("*.{rb,h}")
        Dir.glob("*")
        Dir.glob("*", File::FNM_DOTMATCH)

        Dir.chdir("..")
        Dir.glob("code/**/fib*.rb")
        Dir.glob("**/rdoc/fib*.rb")

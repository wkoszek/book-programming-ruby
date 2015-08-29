# Sample code from Programing Ruby, page 428
alias xx puts
def puts(arg)
  xx(arg.sub(%r{^/private}, ''))
end
        Dir.chdir("/var/log")
        puts Dir.pwd

        Dir.chdir("/tmp") do
          puts Dir.pwd

          Dir.chdir("/usr") do
            puts Dir.pwd
          end

          puts Dir.pwd
        end

        puts Dir.pwd

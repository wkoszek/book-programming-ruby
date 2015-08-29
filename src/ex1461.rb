# Sample code from Programing Ruby, page 663
      # Call using "ruby example.rb --size 10k -v -q a.txt b.doc"
      
      require 'getoptlong'
    # Fake out an initial command line
    ARGV.clear.push  *%w(--size 10k -v -q a.txt b.doc)

      # specify the options we accept and initialize
      # the option parser
      
      opts = GetoptLong.new(
        [ "--size",    "-s",            GetoptLong::REQUIRED_ARGUMENT ],
        [ "--verbose", "-v",            GetoptLong::NO_ARGUMENT ],
        [ "--query",   "-q",            GetoptLong::NO_ARGUMENT ],
        [ "--check",   "--valid", "-c", GetoptLong::NO_ARGUMENT ]
      )

      # process the parsed options
      
      opts.each do |opt, arg|
        puts "Option: #{opt}, arg #{arg.inspect}"
      end

      puts "Remaining args: #{ARGV.join(', ')}"

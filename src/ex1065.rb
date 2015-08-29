# Sample code from Programing Ruby, page 507
        SCRIPT_LINES__ = {}
        require 'code/scriptlines'
        puts "Files: #{SCRIPT_LINES__.keys.join(', ')}"
        SCRIPT_LINES__['./code/scriptlines.rb'].each do |line|
          puts "Source: #{line}"
        end

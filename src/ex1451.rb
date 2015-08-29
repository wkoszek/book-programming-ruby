# Sample code from Programing Ruby, page 658
      require 'find'
      Find.find("/etc/passwd", "code/cdjukebox") do |f|
 next if f =~ /\d/
        type = case 
               when File.file?(f): "F"
               when File.directory?(f): "D"
               else "?"
               end
        puts "#{type}: #{f}"
        Find.prune if f =~ /CVS/
      end

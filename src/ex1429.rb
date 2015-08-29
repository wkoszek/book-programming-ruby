# Sample code from Programing Ruby, page 646
        require 'delegate'

        words = File.read("/usr/share/dict/words").split
        names = File.read("/usr/share/dict/propernames").split

        stats = SimpleDelegator.new(words)
        stats.size
        stats[226]
        stats.__setobj__(names) #!sh!
        stats.size
        stats[226]

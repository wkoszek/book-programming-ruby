# Sample code from Programing Ruby, page 646
         require 'delegate'

         class Words < DelegateClass(Array)
           def initialize(list = "/usr/share/dict/words")
             words = File.read(list).split
             super(words)
           end
         end

         words = Words.new
         words[9999]
         words.size
         words.grep(/matz/)

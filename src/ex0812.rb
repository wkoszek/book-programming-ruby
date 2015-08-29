# Sample code from Programing Ruby, page 437
        words = %w{ puma cat bass ant aardvark gnu fish }
        sorted = words.sort_by {|w| [w.length, w] }
        sorted

# Sample code from Programing Ruby, page 544
        a = %w( z Bb bB bb BB a aA Aa AA A )
        b = a.sort {|a,b| (a.downcase <=> b.downcase).nonzero? || a <=> b }
        b

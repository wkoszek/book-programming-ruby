# Sample code from Programing Ruby, page 71
a = "the quick brown fox"
a.sub(/^./) {|match| match.upcase }
a.gsub(/[aeiou]/) {|vowel| vowel.upcase }

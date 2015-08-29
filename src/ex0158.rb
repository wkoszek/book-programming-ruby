# Sample code from Programing Ruby, page 70
a = "the quick brown fox"
a.sub(/[aeiou]/,  '*')
a.gsub(/[aeiou]/, '*')
a.sub(/\s\S+/,  '')
a.gsub(/\s\S+/, '')

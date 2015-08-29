# Sample code from Programing Ruby, page 710
require 'set'
set1 = Set.new([:bear, :cat, :deer])
set1.add(:fox)
partition = set1.classify {|element| element.to_s.length }

partition

set2 = [ :cat, :dog, :cow ].to_set
set1 | set2
set1 & set2
set1 - set2
set1 ^ set2

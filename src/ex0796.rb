# Sample code from Programing Ruby, page 434
         hash = Hash.new
         %w(cat dog wombat).each_with_index do |item, index|
           hash[item] = index
         end
         hash

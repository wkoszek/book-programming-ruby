# Sample code from Programing Ruby, page 435
        # Sum some numbers
        (5..10).inject {|sum, n| sum + n }
        # Multiply some numbers
        (5..10).inject(1) {|product, n| product * n }

        # find the longest word
        longest = %w{ cat sheep bear }.inject do |memo, word|
           memo.length > word.length ? memo : word
        end
        longest

        # find the length of the longest word
        longest = %w{ cat sheep bear }.inject(0) do |memo, word|
           memo >= word.length ? memo : word.length
        end
        longest

# Sample code from Programing Ruby, page 592
        "hello".gsub(/[aeiou]/, '*')
        "hello".gsub(/([aeiou])/, '<\1>')
        "hello".gsub(/./) {|s| s[0].to_s + ' '}

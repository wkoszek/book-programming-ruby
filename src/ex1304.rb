# Sample code from Programing Ruby, page 599
        "hello".sub(/[aeiou]/, '*')
        "hello".sub(/([aeiou])/, '<\1>')
        "hello".sub(/./) {|s| s[0].to_s + ' ' }

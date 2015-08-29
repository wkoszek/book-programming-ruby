# Sample code from Programing Ruby, page 160
    def one(arg)
      if block_given?
        "block given to 'one' returns #{yield}"
      else
        arg
      end
    end

    def two
      if block_given?
        "block given to 'two' returns #{yield}"
      end
    end

    result1 = one two { 
      "three" 
    }

    result2 = one two do
      "three"
    end

    puts "With braces, result = #{result1}"
    puts "With do/end, result = #{result2}"

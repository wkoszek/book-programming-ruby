# Sample code from Programing Ruby, page 397
  class Special
    def initialize(valuable, volatile, precious)
      @valuable = valuable
      @volatile = volatile
      @precious = precious
    end

    def marshal_dump
      [ @valuable, @precious ]
    end

    def marshal_load(variables)
      @valuable = variables[0]
      @precious = variables[1]
      @volatile = "unknown"
    end

    def to_s
      "#@valuable #@volatile #@precious"
    end
  end

  obj = Special.new("Hello", "there", "World")
  puts "Before: obj = #{obj}"
  data = Marshal.dump(obj)

  obj = Marshal.load(data)
  puts "After: obj = #{obj}"

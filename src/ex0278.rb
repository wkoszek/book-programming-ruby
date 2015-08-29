# Sample code from Programing Ruby, page 112
    module D
      def initialize(name)
       @name =name
      end
      def to_s
        @name
      end
    end
  module Debug
  include D
    def who_am_i?
      "#{self.class.name} (\##{self.id}): #{self.to_s}"
    end
  end
  class Phonograph
    include Debug
    # ...
  end
  class EightTrack
    include Debug
    # ...
  end
  ph = Phonograph.new("West End Blues")
  et = EightTrack.new("Surrealistic Pillow")
  
  ph.who_am_i?
  et.who_am_i?

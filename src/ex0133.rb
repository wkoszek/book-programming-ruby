# Sample code from Programing Ruby, page 63
  class VU
    include Comparable

    attr :volume

    def initialize(volume)  # 0..9
      @volume = volume
    end

    def inspect
      '#' * @volume
    end

    # Support for ranges
    def <=>(other)
      self.volume <=> other.volume
    end

    def succ
      raise(IndexError, "Volume too big") if @volume >= 9
      VU.new(@volume.succ)
    end
  end

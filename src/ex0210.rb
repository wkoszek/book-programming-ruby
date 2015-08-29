# Sample code from Programing Ruby, page 86
  class BrokenAmplifier
    attr_accessor :left_channel, :right_channel
    def volume=(vol)
      left_channel = self.right_channel = vol
    end
  end

  ba = BrokenAmplifier.new
  ba.left_channel = ba.right_channel = 99
  ba.volume = 5
  ba.left_channel
  ba.right_channel

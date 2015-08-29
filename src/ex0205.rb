# Sample code from Programing Ruby, page 84
  class Amplifier
    def volume=(new_volume)
      self.left_channel = self.right_channel = new_volume
    end
  end

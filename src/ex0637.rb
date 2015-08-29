# Sample code from Programing Ruby, page 370
module Tracing
  # ...
end

  EXPORT_VERSION=true
class MediaPlayer
  include Tracing if $DEBUG

  if ::EXPORT_VERSION
    def decrypt(stream)
      raise "Decryption not available"
    end
  else
    def decrypt(stream)
      # ...
    end
  end
    
end

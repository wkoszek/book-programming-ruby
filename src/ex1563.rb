# Sample code from Programing Ruby, page 720
      require 'tempfile'
      
      tf = Tempfile.new("afile")
      tf.path
      tf.puts("Cosi Fan Tutte")
      tf.close
      tf.open
      tf.gets
      tf.close(true)

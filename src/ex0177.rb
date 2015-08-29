# Sample code from Programing Ruby, page 76
    class T
      def download_MP3(name)
      end
    end
  connection = T.new
  connection.download_MP3("jitterbug") {|p| show_progress(p) }

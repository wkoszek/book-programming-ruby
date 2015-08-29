# Sample code from Programing Ruby, page 52
  class File
    def File.my_open(*args)
      result = file = File.new(*args)
      # If there's a block, pass in the file and close
      # the file when it returns
      if block_given?
        result = yield file
        file.close
      end

      return result
    end
  end

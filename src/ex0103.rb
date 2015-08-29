# Sample code from Programing Ruby, page 51
  class File

    def File.open_and_process(*args)
      f = File.open(*args)
      yield f
      f.close()
    end

  end


  File.open_and_process("testfile", "r") do |file|

    while line = file.gets
      puts line
    end

  end

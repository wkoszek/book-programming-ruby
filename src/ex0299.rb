# Sample code from Programing Ruby, page 120
class File
  def File.open(*args)
    result = f = File.new(*args)
    if block_given?
      begin
        result = yield f
      ensure
        f.close
      end
    end

    return result
  end
end

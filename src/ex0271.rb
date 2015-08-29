# Sample code from Programing Ruby, page 108
  class RetryException < RuntimeError
    attr :ok_to_retry
    def initialize(ok_to_retry)
      @ok_to_retry = ok_to_retry
    end
  end
socket = STDIN
  def read_data(socket)
    data = socket.read(512)
    if data.nil?
      raise RetryException.new(true), "transient read error"
    end
    # .. normal processing
  end

# Sample code from Programing Ruby, page 107
  class RetryException < RuntimeError
    attr :ok_to_retry
    def initialize(ok_to_retry)
      @ok_to_retry = ok_to_retry
    end
  end

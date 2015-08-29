# Sample code from Programing Ruby, page 106
  @esmtp = true
  
  begin
    # First try an extended login. If it fails because the
    # server doesn't support it, fall back to a normal login
    
    if @esmtp then
      @command.ehlo(helodom)
    else
      @command.helo(helodom)
    end
    
  rescue ProtocolError
    if @esmtp then
      @esmtp = false
      retry
    else
      raise
    end
  end

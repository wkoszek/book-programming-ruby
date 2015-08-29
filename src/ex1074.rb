# Sample code from Programing Ruby, page 514
class TimedDump
  attr_reader :when_dumped

  def marshal_dump
    Time.now
  end
  def marshal_load(when_dumped)
    @when_dumped = when_dumped.strftime("%I:%M%p")
  end
end

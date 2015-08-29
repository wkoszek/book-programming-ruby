# Sample code from Programing Ruby, page 515
class TimedDump
  attr_reader :when_dumped

  def marshal_dump
    Time.now
  end
  def marshal_load(when_dumped)
    @when_dumped = when_dumped.strftime("%I:%M%p")
  end
end

    t = TimedDump.new
    t.when_dumped

    str = Marshal.dump(t)

    newt = Marshal.load(str)
    newt.when_dumped

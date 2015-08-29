# Sample code from Programing Ruby, page 34
class MyLogger
  private_class_method :new
  @@logger = nil
  def MyLogger.create
    @@logger = new unless @@logger
    @@logger
  end
end
MyLogger.create.id
MyLogger.create.id

# Sample code from Programing Ruby, page 669
require 'logger'
log = Logger.new("application.log", 5, 10*1024)

log.info("Application starting")
# ...

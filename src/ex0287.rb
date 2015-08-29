# Sample code from Programing Ruby, page 115
 require 'code/observer_impl'
class TelescopeScheduler

  # other classes can register to get notifications
  # when the schedule changes
  include Observable   

  def initialize
    @observer_list = []  # folks with telescope time
  end

  def add_viewer(viewer)
    @observer_list << viewer
  end

  # ...
end

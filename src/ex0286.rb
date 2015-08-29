# Sample code from Programing Ruby, page 115
  module Observable
    def observers
      @observer_list ||= []
    end

    def add_observer(obj)
      observers << obj
    end

    def notify_observers
      observers.each {|o| o.update }
    end
  end

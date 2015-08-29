# Sample code from Programing Ruby, page 732
    ref = WeakRef.new(some_object)

    # .. some time later

    gc_was_disabled = GC.disable
    if ref.weakref_alive?
      # do stuff with 'ref'
    end
    GC.enable unless gc_was_disabled

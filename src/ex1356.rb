# Sample code from Programing Ruby, page 618
        thr = Thread.new { $SAFE = 3; sleep }
        Thread.current.safe_level
        thr.safe_level

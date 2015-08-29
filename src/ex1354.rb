# Sample code from Programing Ruby, page 617
        Thread.abort_on_exception = true
        a = Thread.new { sleep(200) }
        a.raise("Gotcha")

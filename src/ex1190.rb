# Sample code from Programing Ruby, page 557
        s = "I am a string"
        oid = s.object_id
        r = ObjectSpace._id2ref(oid)
        r
        r.equal?(s)

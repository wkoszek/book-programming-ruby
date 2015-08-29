# Sample code from Programing Ruby, page 566
        Process.setpriority(Process::PRIO_USER, 0, 19)
        Process.setpriority(Process::PRIO_PROCESS, 0, 19)
        Process.getpriority(Process::PRIO_USER, 0)
        Process.getpriority(Process::PRIO_PROCESS, 0)

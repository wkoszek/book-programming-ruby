# Source Code for Programming Ruby (2nd edition)

This is a collection of Ruby scripts from the "Programming Ruby" book.
This might be the single biggest collection of Ruby scripts around. Each
script seems to be self-contained, and is thus good for testing and
education.

I have written a simple infrastructure for running all of the tests
together, as an experiment with Ruby. I wanted to use the scripts to see how
much stuff I can run in Ruby's 1.8, 1.9, 2.x as well as to see whether
differences between Ruby and Rubinius exist.

# How to run

Run:

	make

By default `ruby` interpreter is invoked in the 'syntax check only' mode for
each of the scripts. If you want to run all the scripts, use:

	make MODE=run

Which will cause the scripts to be run. Be careful, as the local directory
will be populated with all sorts of output files.

Because some scripts expect to read stuff from the standard output, I made
all scripts to get input from `data/stdin_data.i` for convenience.

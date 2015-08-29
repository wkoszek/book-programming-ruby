# Sample code from Programing Ruby, page 108
songlist = ""
def songlist.play() end
catch (:done)  do
  while line = gets
    throw :done unless fields = line.split(/\t/)
    songlist.add(Song.new(*fields))
  end
  songlist.play
end

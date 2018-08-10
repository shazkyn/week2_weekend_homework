class Room

  attr_reader :name, :songs, :guests
  attr_writer :songs, :guests

  def initialize(name)
    @name = name
    @songs = []
    @guests = []
  end

  def get_song(song)
    @songs.push(song)
  end

  def admit_guest(guest)
    @guests.push(guest)
  end

  def eject_guest(guest)
    @guests.delete(guest)
  end

end

class Room

  attr_reader :name, :songs, :guests, :drink_price, :entry_fee
  attr_writer :songs, :guests

  def initialize(name, songs, capacity)
    @name = name
    @songs = songs
    @guests = []
    @drink_price = 3.50
    @entry_fee = 10.00
    @capacity = capacity
  end

  def add_song(song)
    @songs.push(song)
  end

  def admit_guest(guest)
    if @guests.length < @capacity
    @guests.push(guest)
    end
  end

  def eject_guest(guest)
    @guests.delete(guest)
  end

  def play_song(song)
    return (song.name)
  end


end

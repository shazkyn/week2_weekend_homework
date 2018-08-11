class Room

  attr_reader :name, :songs, :guests, :drink_price, :entry_fee, :till
  attr_writer :songs, :guests

  def initialize(name, songs, capacity)
    @name = name
    @songs = songs
    @guests = []
    @drink_price = 3.50
    @entry_fee = 10.00
    @capacity = capacity
    @till = 0
  end

  def add_song(song)
    @songs.push(song)
  end

  def admit_guest(guest)
    if @guests.length < @capacity
      if guest.wallet >= @entry_fee
        @guests.push(guest)
        take_entry_fee(guest)
      end
    end

  end

  def eject_guest(guest)
    @guests.delete(guest)
  end

  def play_song(song)
    return (song.name)
  end

  def take_entry_fee(guest)
    @till += @entry_fee
    guest.pay_entry_fee(@entry_fee)
  end

end

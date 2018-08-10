require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")
require_relative("../songs.rb")
require_relative("../rooms.rb")


class RoomTest < Minitest::Test

  def setup
     @room1 = Room.new("Room1")
     @song = Song.new("I will Survive")
     @guest = Guest.new("Fred Flintstone", 50)
  end

  def test_room_exists()
    assert_equal(Room, @room1.class)
  end

  def test_has_songs()
    assert_equal([], @room1.songs)
  end

  def test_get_song()
    @room1.get_song(@song)
    assert_equal(1, @room1.songs.length)
  end

   def test_admit_guest()
     @room1.admit_guest(@guest)
     assert_equal(1, @room1.guests.length)
   end

   def test_eject_guest()
     @room1.eject_guest(@guest)
     assert_equal(0, @room1.guests.length)
   end
end

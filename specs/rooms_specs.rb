require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")
require_relative("../songs.rb")
require_relative("../rooms.rb")


class RoomTest < Minitest::Test

  def setup
    @song1 = Song.new("I will Survive")
    @song2 = Song.new("Ring of Fire")
    @song3 = Song.new("American Pie")
    @song4 = Song.new("Clever Trevor")
    @room1 = Room.new("Room1", [@song1, @song2, @song3, @song4], 5)
    @room2 = Room.new("Room2", [@song1, @song2, @song3, @song4], 5)
    @guest = Guest.new("Fred Flintstone", 50, "I Love Rock n Roll")
  end

  def test_room_exists()
    assert_equal(Room, @room1.class)
    assert_equal(Room, @room2.class)
  end

  def test_room_name()
    assert_equal("Room1", @room1.name)
    assert_equal("Room2", @room2.name)
  end

  def test_has_songs()
    assert_equal([@song1, @song2, @song3, @song4], @room1.songs)
  end

  def test_add_song()
    @room1.add_song(@song)
    assert_equal(5 , @room1.songs.length)
  end

   def test_admit_guest()
     @room1.admit_guest(@guest)
     assert_equal(1, @room1.guests.length)
   end

   def test_eject_guest()
     @room1.admit_guest(@guest)
     assert_equal(1, @room1.guests.length)
     @room1.eject_guest(@guest)
     assert_equal(0, @room1.guests.length)
   end

   def test_play_song()
     now_playing = @room1.play_song(@song1)
     assert_equal("I will Survive", now_playing )
   end

   def test_capacity()
     guest1 = Guest.new("Barney Rubble", 60, "Love Shack")
     guest2 = Guest.new("Wilma Flintstone", 50, "I will Survive")
     guest3 = Guest.new("Betty Rubble", 50, "Clever Trevor")
     guest4 = Guest.new("Pebbles Flintstone", 100, "Paranoid")
     guest5 = Guest.new("Bambam Rubble", 90, "Crazy Train")

     @room1.admit_guest(@guest)
     @room1.admit_guest(@guest)
     @room1.admit_guest(@guest)
     @room1.admit_guest(@guest)
     @room1.admit_guest(@guest)
     @room1.admit_guest(@guest)
     assert_equal(5, @room1.guests.length)
   end

   def
end

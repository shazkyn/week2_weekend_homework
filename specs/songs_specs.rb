
require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../songs.rb")


class SongTest < Minitest::Test

  def setup
     @song1 = Song.new("I Will Survive")
  end



end

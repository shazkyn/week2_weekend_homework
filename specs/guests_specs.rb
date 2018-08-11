require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")
require_relative("../rooms.rb")
require_relative("../songs.r")

class GuestTest < Minitest::Test

  def setup
     @guest1 = Guest.new("Joe Blogs", 50.00, "Ring of Fire")
  end

  def test_guest_exists()
    assert_equal(Guest, @guest1.class)
  end

  def test_guest_has_wallet()
    assert_equal(50.00, @guest1.wallet)
  end

  def test_check_guest_has_fave_song
    assert_equal("Ring of Fire", @guest1.fave_song)
  end

  def test_buy_drink
    @guest1.buy_drink(3.50)
    assert_equal(46.50, @guest1.wallet)
  end

  def test_pay_entry_fee
    @guest1.pay_entry_fee(10.00)
    assert_equal(40.00, @guest1.wallet)
  end
  #
  # def test_guest_chooses_song
  #   @guest1.choose_song
  # end
end

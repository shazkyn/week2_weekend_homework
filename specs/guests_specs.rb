require("minitest/autorun")
require("minitest/rg")
require_relative("../guests.rb")


class GuestTest < Minitest::Test

  def setup
     @guest1 = Guest.new("Joe Blogs", 50.00)
  end

  def test_guest_exists()
    assert_equal(Guest, @guest1.class)
  end

  def test_guest_has_wallet()
    assert_equal(50.00, @guest1.wallet)
  end

  def test_check_guest_can_afford()

  end

end

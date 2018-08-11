class Guest

  attr_reader :name,  :wallet, :fave_song
  attr_writer :wallet

def initialize(name, wallet, fave_song)
  @name = name
  @wallet = wallet
  @fave_song = fave_song
end

  def buy_drink(drink_price)
    @wallet -= drink_price
  end

  def pay_entry_fee(pay_entry_fee)
    @wallet -= pay_entry_fee
  end


end

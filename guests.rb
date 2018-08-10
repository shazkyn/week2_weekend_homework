class Guest

  attr_reader :name,  :wallet
  attr_writer :wallet

def initialize(name, wallet)
  @name = name
  @wallet = wallet
end

def guest_has_wallet()
  @wallet.wallet
end


end

class Account
  DEFAULT_BALANCE = 0.0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @transactions = []
  end

  def balance
    @balance
  end

  def transactions
    @transactions
  end

end

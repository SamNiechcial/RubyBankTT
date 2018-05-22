class Account
  DEFAULT_BALANCE = 0.0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @transactions = []
  end

  def balance
    @balance
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def transactions
    @transactions
  end

end

class Account
  attr_reader :balance, :transactions

  DEFAULT_BALANCE = 0.0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @transactions = []
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount
  end
end

require_relative 'transaction'

class Account
  attr_reader :balance, :statement

  DEFAULT_BALANCE = 0.0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @statement = []
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount
  end
end

require_relative 'transaction'
require 'time'

class Account
  attr_reader :balance, :statement

  DEFAULT_BALANCE = 0.0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @statement = []
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    current_date = DateTime.now.strftime("%d/%m/%Y")
    transaction = Transaction.new(current_date, deposit_amount, nil, @balance)
    @statement << transaction
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount
  end
end

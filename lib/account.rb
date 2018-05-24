require 'time'
require_relative 'transaction'

class Account
  attr_reader :balance, :statement

  DEFAULT_BALANCE = 0.0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @current_date = Time.now.strftime('%d/%m/%Y')
    @statement = []
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    transaction = Transaction.new(@current_date, deposit_amount, nil, @balance)
    @statement << transaction
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount
    transaction = Transaction.new(@current_date, nil, withdrawal_amount, @balance)
    @statement << transaction
  end
end

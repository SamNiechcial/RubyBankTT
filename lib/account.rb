require 'time'
require_relative 'transaction'

class Account
  attr_reader :balance, :statement

  DEFAULT_BALANCE = 0.0

  def initialize(balance = DEFAULT_BALANCE, transaction_class = Transaction)
    @balance = balance
    @current_date = Time.now.strftime('%d/%m/%Y')
    @statement = []
    @transaction_class = transaction_class
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
    @statement << @transaction_class.new(@current_date, deposit_amount, nil, @balance)
  end

  def withdraw(withdrawal_amount)
    @balance -= withdrawal_amount
    @statement << @transaction_class.new(@current_date, nil, withdrawal_amount, @balance)
  end
end

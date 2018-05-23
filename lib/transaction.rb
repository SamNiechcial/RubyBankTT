require 'account'

class Transaction
  attr_reader :balance, :transaction

  def initialize(date, deposit, withdrawal, balance)
    @transaction = { date: date,
                     deposit: deposit,
                     withdrawal: withdrawal,
                     balance: balance }
  end
end

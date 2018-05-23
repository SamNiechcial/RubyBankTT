require 'account'

class Transaction
  attr_reader :balance, :transaction

  def initialize(number, date, deposit, withdrawal, balance)
    @transaction = { number: number,
                     date: date,
                     deposit: deposit,
                     withdrawal: withdrawal,
                     balance: balance }
  end
end

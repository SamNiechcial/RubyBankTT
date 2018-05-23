require_relative 'account'

class Transaction
  attr_reader :transaction

  def initialize(date, deposit, withdrawal, balance)
    @transaction = { date: date,
                     deposit: deposit,
                     withdrawal: withdrawal,
                     balance: balance }
  end
end

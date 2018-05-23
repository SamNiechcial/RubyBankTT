require 'transactions'

describe 'Transaction' do

  it 'should create an object containing hashes of required information' do
    sams_transaction = Transaction.new(1, "23/05/2018", 500, 0, 500)
    expect (sams_transaction).to eq(number: 1, date: "23/05/2018", credit: 500, debit: 0, balance: 500)
  end
end

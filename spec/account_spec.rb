require 'account'
require 'transaction'

describe Account do
  subject(:sams_account) { described_class.new }

  it 'should create an account with a balance of zero by default' do
    expect(sams_account.balance).to eq 0
  end

  it 'should create an account with an empty statement array' do
    expect(sams_account.statement).to eq []
  end

  describe '#deposit' do
    it 'should allow the user to deposit money in the account' do
      sams_account.deposit(10)
      expect(sams_account.balance).to eq 10.00
    end

    it 'should add one transaction object to the statement on deposit' do
      sams_account.deposit(100)
      expect(sams_account.statement.length).to eq 1
    end
  end

  describe '#withdraw' do
    it 'should allow the user to withdraw money from the account' do
      sams_account.withdraw(10)
      expect(sams_account.balance).to eq -10
    end

    it 'should add one transaction object to the statement on withdrawal' do
      sams_account.withdraw(100)
      expect(sams_account.statement.length).to eq 1
    end
  end
end

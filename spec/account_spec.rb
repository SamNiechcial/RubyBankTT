require 'account'
require 'transaction'

describe Account do
  subject(:sams_account) { described_class.new }

  it 'should create an account with a balance of zero by default' do
    expect(subject.balance).to eq 0
  end

  it 'should create an account with an empty statement array' do
    expect(subject.statement).to eq []
  end

  describe '#deposit' do
    it 'should allow the user to deposit money in the account' do
      expect { subject.deposit(10) }.to change { subject.balance }.from(0).to(10.00)
    end

    it 'should add one transaction object to the statement on deposit' do
      subject.deposit(100)
      expect(subject.statement.length).to eq 1
    end

    it 'should add a transaction to the statement containing correct amount' do
      subject.deposit(100)
      expect(subject.statement[0].transaction[:deposit]).to eq 100
    end
  end

  describe '#withdraw' do
    it 'should allow the user to withdraw money from the account' do
      expect { subject.withdraw(10) }.to change { subject.balance }.from(0).to(-10)
    end

    it 'should add one transaction object to the statement on withdrawal' do
      subject.withdraw(100)
      expect(subject.statement.length).to eq 1
    end

    it 'should add a transaction to the statement containing correct amount' do
      subject.withdraw(100)
      expect(subject.statement[0].transaction[:withdrawal]).to eq 100
    end
  end
end

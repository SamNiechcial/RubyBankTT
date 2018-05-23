require 'account'
require 'transaction'

describe Transaction do
  subject(:sams_transaction) { described_class.new(1, "23/05/2018", 500, nil, 500) }

  it 'should instantiate with the correct number' do
    expect(sams_transaction.transaction[:number]).to eq 1
  end

  it 'should instantiate with the correct date' do
    expect(sams_transaction.transaction[:date]).to eq "23/05/2018"
  end

  it 'should insantiate with the correct deposit value' do
    expect(sams_transaction.transaction[:deposit]).to eq 500
  end

  it 'should instantiate with the correct withdrawal value' do
    expect(sams_transaction.transaction[:withdrawal]).to eq nil
  end

  it 'should instantiate with the correct balance value' do
    expect(sams_transaction.transaction[:balance]).to eq 500
  end 
end

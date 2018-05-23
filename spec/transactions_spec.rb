require 'account'
require 'transaction'

describe Transaction do
  subject(:sams_transaction) { described_class.new(1, "23/05/2018", 500, nil, 500) }

  it 'should instantiate with the correct number' do
    expect(sams_transaction.transaction[:number]).to eq 1
  end
end
